class Title < ApplicationRecord
  include Paginator

  has_one :rating, foreign_key: :tconst, primary_key: 'tconst'

  scope :start_year_filter, ->(syear) { where(syear: syear) }
  scope :title_type_filter, ->(type) { where(movie_type: type) }
  scope :title_ids_filter, lambda { |ids|
    return nil if ids.nil? || ids.empty?

    where(id: ids)
  }
  scope :adult_movies_filter, lambda { |adult_filter|
    return nil if adult_filter.blank?

    where(adult: adult_filter)
  }
end
