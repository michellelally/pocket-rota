class EventsController < ApplicationController

	def index

		require 'net/http'
		require 'json'

		@the_city = "Galway"

		@url = "https://app.ticketmaster.com/discovery/v2/events.json?city=#{@the_city}&apikey=QsWcrQFrgyG0ZJHKkHZ85ugZsxBsBCLf"
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
