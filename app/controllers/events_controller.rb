class EventsController < ApplicationController


  def index

  end

  def initialize()
  	@future = { query: {group_id: 18394215, sign: true} }
  	@past = { query: {group_id: 18394215, status:'past', sign: true} }
  end

  def show

  	base_uri = 'https://api.meetup.com/2/events?'
  	@events = HTTParty.get(base_uri, @future)
  	@past_events = HTTParty.get(base_uri, @past)

  	@events.each do |x|
  		@count = x.count
  	end

  	@count = @count - 1



  end
end
