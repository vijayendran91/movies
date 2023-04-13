module Types::Objects
  class TitleTypes < Types::BaseObject
    field :id,            ID,      'Id of the movie title'
    field :tconst,        String,  'tconst of the movie'
    field :movie_type,    String,  'Type of the movie'
    field :ptitle,        String,  'Primary Title of the movie'
    field :otitle,        String,  'Original Title of the movie'
    field :adult,         Boolean, 'Is the movie adult rated'
    field :syear,         String,  'Starting year'
    field :eyear,         String,  'Ending year'
    field :run_time,      String,  'Run time of the movie'
    field :genres,        String,  'Genre of the movie'
    field :rating,        Types::Objects::Rating, 'Rating for the movie'
  end
end