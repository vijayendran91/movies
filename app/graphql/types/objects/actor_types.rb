module Types::Objects
  class ActorTypes < Types::BaseObject
    field :id,              Int, 'Id of the actor', null: false
    field :name,            String, 'Name of the actor', null: true
    field :prof,            [String], 'List of professions', null: true
    field :nconst,          String, 'Nconst', null: true
    field :yob,             String, 'Year of Birth', null: true
    field :yod,             String, 'Year of Death', null: true
    field :top_titles,      String, 'Top Movie Title Id', null: true
  end
end