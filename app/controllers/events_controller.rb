class EventsController < ApplicationController


  def index
	upcomingEvents = HTTParty.get('https://api.meetup.com/2/events?key=655140144842a225f2543e40372a5e&group_id=18394215&sign=true')
	pastEvents = HTTParty.get('https://api.meetup.com/2/events?key=655140144842a225f2543e40372a5e&sign=true&photo-host=public&group_id=18394215&status=past&page=20')
	
	respond_to do |format|
	format.html
	format.json {render json: upcomingEvents }
	end
	
	 @futureEvents = upcomingEvents['results']
	 @pastEvents = pastEvents['results']

	 # @h1 = []
	 # y = 0
	 # @list = events['results'].each do |x|
	 # 	 @h1.push("events" => events['results'][y])
	 # 	y = y + 1 
	 # end

	 #First Event
	 @firstEvent = @pastEvents[0]

	 #Next Event
	 @nextEvent = @futureEvents[0]


  end

  def show

  end




  # def show

  # 	base_uri = 'https://api.meetup.com/2/events?'
  # 	@events = HTTParty.get(base_uri, @future)
  # 	@past_events = HTTParty.get(base_uri, @past)

  # 	# @events.each do |x|
  # 	# 	@count = x.count
  # 	# end

  #   # @past_events.each do |x|
  #   #   @count = x.count
  #   # end



  # end
end
