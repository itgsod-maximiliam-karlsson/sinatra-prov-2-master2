class Room
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :number_of_seats, Integer

  has n, :showings    # "...and has many showings"
  belongs_to :cinema # "an Room belongs to a cinema..."
end