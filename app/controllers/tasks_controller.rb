class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
  end

  private
    def task_params
      params.require(:task).permit(:task)
    end
    def set_task
      @task = Task.find(params[:id])
    end


end
