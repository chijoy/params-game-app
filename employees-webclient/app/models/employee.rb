class Employee
  attr_accessor :id, :first_name, :last_name, :email, :ssn, :birthday

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
    Unirest.get("#{ENV["api_domain_name"]}/api/v1/empoyees.json",
      headers: {"Accept" => "application/json",
        "X-User-Email" => ENV['USER_EMAIL'],
        "Authorization" => "Token token=#{ ENV['API_TOKEN'] }"}).body.each do |employee_hash|
      collection << Employee.new(employee_hash)
    end
    collection
  end

  def self.find(params_id)
    Employee.new(Unirest.get("#{ENV["api_domain_name"]}/api/vi/employees/#{params_id}.json").body
  end

  def self.create(hash_options)
    Unirest.post("#{ENV["api_domain_name"]}/api/v1/employees",
                                  headers: {"Accept" => "application/json"},
                                  parameters: {
                                    first_name: hash_options[:first_name],
                                    last_name: hash_options[:last_name],
                                    email: hash_options[:email],
                                    ssn: hash_options[:ssn]
                                    }).body
  end

  def update(hash_options)
    Unirest.patch("#{ENV["api_domain_name"]}/api/v1/employees/#{params[:id]}",
                              headers: {"Accept" => "application/json"},
                              paramters: {
                                first_name: hash_options[:first_name],
                                last_name: hash_options[:last_name],
                                email: hash_options[:email],
                                ssn: hash_options[:ssn]
                                }).body
  end

  def delete
    Unirest.delete("#{ENV["API_DOMAIN_NAME"]}/api/v1/employees/#{id}.json,
                                  headers: {"Accept" => "application/json",
        "X-User-Email" => ENV['USER_EMAIL'],
        "Authorization" => "Token token=#{ ENV['API_TOKEN'] }"}).body.each do |employee_hash|"
  end
end