class EmployeesController < ApplicationController
  before_action :set_employee,except: [:index, :new, :create]

  def index
    @employees = Employee.all
  end

  def show
  end

  def update
    @employee.update(employee_params)
    redirect_to @employee
  end

  def edit
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.img_url="https://previews.123rf.com/images/slon1971/slon19711202/slon1971120200031/12352851-funny-chef-eating-loaf-isolated-on-white-background.jpg"
    byebug
    if @employee.valid?
      @employee.save
      flash[:notice]= "CREATED YO"
      redirect_to @employee
    else
      flash[:errors] = @employee.errors.full_messages
      render new_employee_path
    end
  end

  def destroy
  end

private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
  end

end
