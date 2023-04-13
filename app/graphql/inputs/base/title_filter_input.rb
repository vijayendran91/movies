module Inputs
  module Base
    class TitleFilterInput < Types::BaseInputObject
      argument :adult_filter, Boolean, 'Filter Adult movies'
      argument :start_year,   String, 'Start year of the movie'
      argument :title_type,   Types::Enums::TitleTypeTypes, 'Type of the movie'
    end
  end
end