class TasksController < ApplicationController
    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
    end

    def index
        @tasks = Tasks.all
    end
    
    def edit
    end

    def update
    end

    def destroy
    end

    private

        def task_params
            params.require(:task).permit(:name)
        end
end
