class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all.order(creted_at: :desc)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task  = Task.new(tasks_params)
    if @task.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end



  def destroy
    @task = Task.find(params(:id))
    @task.destroy

    redirect_to root_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :text)
  end
end
