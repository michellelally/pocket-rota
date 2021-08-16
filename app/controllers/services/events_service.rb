require "down"
class EventService < BaseService

  def initialize(first_variable, second_variable)
    self.first_variable = first_variable
    self.second_variable = second_variable
  end

  def call
    tempfile = Down.download("https://dog-facts-api.herokuapp.com/api/v1/resources/dogs?index=3")
    tempfile.read.to_s
  end

end

