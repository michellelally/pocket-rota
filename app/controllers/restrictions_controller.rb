class RestrictionsController < ApplicationController
  before_action :authenticate_user!

  def index

    require 'net/http'
    require 'json'

    @url = "https://raw.githubusercontent.com/michellelally/json-resctrictions/main/restrictions.json"
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)

    if @output.empty?
      @final_output = "Error"
    else 
      @final_output = @output
    end
  end 

end
