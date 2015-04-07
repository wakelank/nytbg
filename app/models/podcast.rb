class Podcast < ActiveRecord::Base
  has_one :presentation
end
