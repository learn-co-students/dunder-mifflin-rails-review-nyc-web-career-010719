class DogsController < ApplicationController

  def index
    # byebug
    @dogs = Dog.all

    if params[:sort] == "1"
      @dogs = @dogs.sort_by do |dog|
        dog.employees.count
      end
    elsif params[:sort] == "2"
      @dogs = @dogs.sort_by do |dog|
        dog.employees.count
      end
      @dogs = @dogs.reverse
    elsif params[:sort] == "3"
      @dogs
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private



end
