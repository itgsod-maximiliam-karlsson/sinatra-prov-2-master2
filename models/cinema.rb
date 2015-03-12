class Cinema
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :rooms    # "a cinema has many rooms"
  has n, :showings, :through => :rooms

  def rooms
    Room.all
  end
end