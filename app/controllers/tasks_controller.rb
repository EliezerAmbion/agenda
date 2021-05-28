class TasksController < ApplicationController
  before_action :get_category

  def index
    @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)

    if @task.valid?
      @task.save
      redirect_to category_tasks_path

    else
      render :new
    end
  end

  private 
  def get_category
    @category = Category.find(params[:category_id]) #category id is the foreign key in the task

  end

  def task_params
    params.require(:task).permit(:task_title, :category_id, :done, :category_id)
  end
end
