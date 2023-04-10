class Flight < ApplicationRecord
  validates :name :departure_airport_id :arrival_airport_id :departure, presence: true
  
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_many :bookings
  has_many :passengers, through: :bookings

  def formatted_date
    departure.to_date.strftime("%m/%d/%Y")
  end

  def formatted_time
    departure.to_time.strftime("%l:%M%P")
  end
  def formatted_duration
    "%dh %02dm" % duration.divmod(60)
  end

end
