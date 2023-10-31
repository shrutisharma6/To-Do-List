class TasksController < ApplicationController
    
    before_action :set_task, only: [:edit, :update, :destroy]

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to tasks_path
    end

    def index
        @tasks = Task.all
    end
    
    def edit
    end

    def update
        if @task.update(task_params)
            flash[:notice]= "Task was updated successfully."
            redirect_to task_path
        else
            render 'edit'
        end
    end

    def destroy
        @task.destroy
        redirect_to tasks_path
    end

    private

        def task_params
            params.require(:task).permit(:name)
        end

        def set_task
            @task=Task.find(params[:id])
        end
end
