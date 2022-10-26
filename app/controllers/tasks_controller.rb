class TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find(params[:id])
        render json: task, serializer: TaskSerializer
    end

    
    def create
        task = Task.create(task_params)
        render json: task, status: :created        
    end


    def update
        task = Task.find_by(id: params[:id])

        if task
            task.update(task_params)
            render json: task
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end


    def destroy
        task = Task.find_by(id: params[:id])

        if task
            task.destroy
            head :no_content
        else
            render json: {error: "Task not found" }, status: :not_found
        end
    end

    private

    def task_params
        params.permit(:task, :notes, :category)
    end
end
