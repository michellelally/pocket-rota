require 'file_writer'
require 'observer'

class EmployeeObserver < ActiveRecord::Observer
    
    def after_update(record)
        # use the FileWriter instance method to retrieve the single instance/object of the class
        @logger = FileWriter.instance
        # use the filewriter to log/record a message about the updated employee
        @logger.logInformation("EmployeeObserver Demo:")
        @logger.logInformation("#{record.name}
        has been updated. Position: #{record.position} Availability: #{record.availability}")
        
    end
    
end