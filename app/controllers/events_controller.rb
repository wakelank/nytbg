class EventsController < ApplicationController


  def index
    response = HTTParty.get('https://api.meetup.com/2/events?key=655140144842a225f2543e40372a5e&group_id=18394215&sign=true')

    respond_to do |format|
    format.html
    format.json {render json: response }
  end


  end

  def show
    response = HTTParty.get('https://api.meetup.com/2/events?key=655140144842a225f2543e40372a5e&group_id=18394215&sign=true')

    respond_to do |format|
    format.html
    format.json {render json: response }
  end


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
