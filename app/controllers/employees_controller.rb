class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(strong_params)
      if @employee.valid?
        redirect_to @employee
      else
        flash[:errors] = @employee.errors.full_messages
        redirect_to edit_employee_path
      end
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(strong_params)
    if @employee.valid?
      @employee.save
      redirect_to @employee
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  private

  def strong_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

end
