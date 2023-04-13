class Types::Objects::Rating < Types::BaseObject
  field :avg_rating,    Float, 'Average rating for the Movie'
  field :no_votes,      Int, 'No. Of votes'
end