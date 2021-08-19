require 'singleton'

class FileWriter
    include Singleton
    def initialize(text)
        File.open("employees.txt", 'a') {|f| f.write(text) }
    end

    def logInfo(text)
        File.open("employees.txt", 'a') {|f| f.write(text) }    
    end
end
