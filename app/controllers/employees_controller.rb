class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    respond_to do | format |
      format.html
      format.csv{ send_data Employee.to_csv, filename: "Employee-#{DateTime.now.strftime("%d%m%y%h%m")}.csv"}
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.save
      redirect_to @employee
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to root_path
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :email, :designation, :date_of_birth, :joining_date, :company_name, :company_address, :father_name,:mother_name, :father_contact_no, :mother_contact_no, :joining_date, :house_no, :area_lankmark, :city, :state, :pin_code, :gender )
  end
end
