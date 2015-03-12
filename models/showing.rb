# Showings in an room
class Showing
  include DataMapper::Resource

  property :id, Serial
  property :start_time, DateTime

  belongs_to :room  # "An showing belongs to an room"
  belongs_to :cinema
end