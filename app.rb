class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get '/movies' do
    @movies = Movie.all
    slim :movies
  end

  get '/:movie_id/' do |movie_id|
    @Movie = Movie.get(movie_id.to_i)
    slim :cinemas
  end

  get '/cinemas' do
    @cinemas = Cinema.all
    slim :cinemas
  end

end