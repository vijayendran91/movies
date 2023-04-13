class Title < ApplicationRecord
  include Paginator

  has_one :rating, foreign_key: :tconst, primary_key: 'tconst'

  scope :adult_movies_filter, lambda { |adult_filter|
    return nil if adult_filter.blank?

    where(adult: adult_filter)
  }
  scope :start_year_filter, ->(syear) { where(syear: syear) }
  scope :title_type_filter, ->(type) { where(movie_type: type) }
end
