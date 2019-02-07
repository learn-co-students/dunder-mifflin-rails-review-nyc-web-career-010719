class DogsController < ApplicationController
  def index
    @dogs = Dog.sort_dogs
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
