class Occasion < ActiveRecord::Base
  belongs_to :recipient
  validates :occasion_type, :date, presence: true
  validate :date_in_future

  def date_in_future
  	if date < Date.today + 7
  		errors.add(:date, "Must be 7 days in future")
  	end
  end
end
