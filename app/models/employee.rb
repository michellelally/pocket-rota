class Employee < ApplicationRecord
  belongs_to :user
end

def findSeniors 
	@seniors = Employee.where({ position: ["Manager", "Supervisor"]})
end
