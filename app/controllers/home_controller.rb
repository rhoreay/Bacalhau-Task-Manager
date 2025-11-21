class HomeController < ApplicationController
  def index
    @people = Person.all
    @tasks = Task.all
  end
end
