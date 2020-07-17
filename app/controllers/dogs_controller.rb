class DogsController < ApplicationController

  def index
    if params[:option] == "DESC"
      @dogs = Dog.all.sort_by {|dog| dog.employee_count}
    elsif params[:option] == "ASC"
      @dogs = Dog.all.sort_by {|dog| dog.employee_count}.reverse
    else
      @dogs = Dog.all
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to @dog
  end

private
  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :employee_name)
  end



end
