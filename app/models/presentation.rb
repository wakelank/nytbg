class Presentation < ActiveRecord::Base
  has_many :presenters
  belongs_to :venue
  has_one :video
  has_one :podcast
  belongs_to :event
end
