class Title < ApplicationRecord
  include Paginator

  scope :adult_movies_filter, lambda { |adult_filter|
    return nil if adult_filter.blank?

    where(adult: adult_filter)
  }

  scope :start_year_filter, ->(syear) { where(syear: syear) }
end
