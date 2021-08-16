class EventsController < ApplicationController

	def index

		require 'net/http'
		require 'json'

		@url = 'https://app.ticketmaster.com/discovery/v2/events.json?city=Dublin&apikey=QsWcrQFrgyG0ZJHKkHZ85ugZsxBsBCLf'
		@uri = URI(@url)
		@response = Net::HTTP.get(@uri)
		@output = JSON.parse(@response)
	end

end
