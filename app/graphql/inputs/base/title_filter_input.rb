module Inputs
  module Base
    class TitleFilterInput < Types::BaseInputObject
      argument :adult_filter, Boolean, 'Filter Adult movies', required: false
      argument :start_year,   String, 'Start year of the movie', required: false
      argument :title_type,   Types::Enums::TitleTypeTypes, 'Type of the movie', required: false
      argument :ids,          [Int], 'Array of Ids to filter the result', required: false
    end
  end
end