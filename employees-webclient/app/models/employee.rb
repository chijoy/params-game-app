class Employee
  attr_accessor :first_name, :last_name, :email, :ssn, :birthday

  def initialize(hash_brown)
    @id = hash_brown["id"]
    @first_name = hash_brown["first_name"]
    @last_name = hash_brown["last_name"]
    @email = hash_brown["email"]
    @ssn = hash_brown["ssn"]
    @birthday = hash_brown["birthday"]
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    collection = []
    Unirest.get("#{ENV["api_domain_name"]}/api/vi/empoyees.json").body.each do |employee_hash|
      @employees << Employee.new(employee_hash)
    end
    collection
  end

  def self.find(params_id)
    Employee.new(Unirest.get("#{ENV["api_domain_name"]}/api/vi/employees/#{params_id}.json")).body
  end
end