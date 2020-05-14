class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @task = Task.new(task_params)
    # Strong Params at the bottom, takes the argument of whitelisting @task = Task.new(params[:task]);
    @task.save
    # No need to redirect to a create page. Just back to normal page
    redirect_to task_page_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params) # @task.update(params[:task])
    redirect_to task_page_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end


  private

  def task_params
    params.require(:task).permit(:title, :details)
  end


end
