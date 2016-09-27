class EmployeesController < ApplicationController
  def index
    # @employees = Employee.all
    @employees = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").body
  end
end