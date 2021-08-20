require 'singleton'
class FileWriter
    include Singleton
    def initialize
        @file_dir = "lib/employees.txt"
        @log = File.open(@file_dir, "a")
    end

    def logInformation(information)
        @file_dir = "./employees.txt"
        @file = File.open(@file_dir, "a")
        @file.write(information)

        File.open("lib/employees.txt", 'w') { |file| file.write(information) }

    end
end
