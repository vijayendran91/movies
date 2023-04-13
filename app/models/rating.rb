class Rating < ApplicationRecord
  belongs_to :title, foreign_key: :tconst, primary_key: :tconst
end
