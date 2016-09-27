class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.create(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                ssn: params[:ssn]
      )

    render 'show.json.jbuilder'
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
end
