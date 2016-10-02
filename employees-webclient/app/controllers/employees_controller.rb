class EmployeesController < ApplicationController
  def index
    @employees = Employees.all
  end

  def new
  end

  def create
    @employee = Unirest.post("#{ENV["api_domain_name"]}/api/v1/employees",
                              headers: {"Accept" => "application/json"},
                              parameters: {
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                ssn: params[:ssn]
                                }).body

    redirect_to "/employees/#{@employee["id"]}"
  end

  def show
    @employee = Employee.find(params[:id]) 
  end

  def edit
    @employee = Unirest.get("#{ENV["api_domain_name"]}/api/v1/empoyees/#{params[:id]}.json").body
  end

  def update
    @employee = Unirest.patch("#{ENV["api_domain_name"]}/api/v1/employees/#{params[:id]}",
                              headers: {"Accept" => "application/json"},
                              paramters: {
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                ssn: params[:ssn]
                                }).body

    redirect_to "/employees/#{@employee["id"]}"
  end

  def destroy
    response = Unirest.delete("#{ENV["api_domain_name"]}/api/v1/employees/#{params[:id]}",
                              headers: {"Accept" => "application/json"}).body

    flash[:success] = response["message"]
    redirect_to "/employees"
  end
end
