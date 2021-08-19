# I am going to decorate an the Employee class
class BasicEmployee
    def initialize(name, position, availability)
        @name = name
        @position = position
        @availability = availability
		@description = "Employee"
	end
	
	# getter method
	def name
		return @name
    end
    
    def position
		return @position
	end
    
    def availability
		return @availability
    end
    
	def details
		return @description + ": #{@name} | " + " #{@position} | " + " #{@availability}"
	end	
end

# The decorator class acts as the superclass for the rest of the decorator classes
class EmployeeDecorator
	def initialize(senior_employee)
		@senior_employee = senior_employee
		@description = "Must be scheduled"
	end
	
	def details
		return @senior_employee.details + " (" + @description + ")"
	end
	
end

# A decorator for employees that are in a manegerial position
class ManagementEmployee < EmployeeDecorator
	def initialize(senior_employee)
		super(senior_employee)
		@description = "Management Team"
	end
	
	def details
		return @senior_employee.details + " (" + @description + ")"
	end	
end

# A decorator for employees that have a permanent contract 
class PermanentEmployee < EmployeeDecorator
	def initialize(senior_employee)
		super(senior_employee)
		@description = "Permanent"
	end
	
	def details
		return @senior_employee.details + " (" + @description + ")"
	end	
end