class TasksController < ApplicationController
  def index
    @task = Task.new
  end
end
