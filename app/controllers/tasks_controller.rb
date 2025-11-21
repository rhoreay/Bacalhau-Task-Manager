class TasksController < ApplicationController
  def index
  end

  def new 
    @task = Task.new
    # we need to fetch all person to user can associate
    @people = Person.all 
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to task_path(@task.id)
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task
    else
      @people = Person.all
      render :edit, status: unprocessable_entity
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy()
    redirect_to home_path
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :status, person_ids: [])
    end

end
