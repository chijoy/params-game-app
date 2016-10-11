class EmployeesController < ApplicationController
  def index
    @employees = Employees.all
  end

  def new
  end

  def create
    @employee = Employee.create({
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                ssn: params[:ssn]
                                })

    redirect_to "/employees/#{@employee["id"]}"
  end

  def show
    @employee = Employee.find(params[:id]) 
  end

  def edit
    @employee = Unirest.get("#{ENV["api_domain_name"]}/api/v1/empoyees/#{params[:id]}.json").body
  end

  def update
    @employee = Employee.find(params[:id])

    @emplyee.update({first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    ssn: params[:ssn]
                    })

    redirect_to "/employees/#{@employee["id"]}"
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    
    redirect_to "/employees"
  end
end
