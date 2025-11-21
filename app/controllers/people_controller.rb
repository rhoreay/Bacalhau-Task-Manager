class PeopleController < ApplicationController

  def index
    @people = Person.all()
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to person_path(@person.id)
    else 
      render :new, status: :unprocessable_entity
    end
    
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy()
    redirect_to home_path
  end

  private 
    def person_params
      params.require(:person).permit(:name, :cpf, :email)
    end
  

end
