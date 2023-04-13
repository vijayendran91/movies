require 'csv'

namespace :import do
  task ratings: :environment do
    file = CSV.read('imports/title_ratings.tsv', col_sep: "\t", headers: true, liberal_parsing: true)
    file.delete(0)
    count = 0
    file.each do |record|
      rating = Rating.new
      rating[:tconst] = record['tconst']
      rating[:avg_rating] = record['averageRating']
      rating[:no_votes] = record['numVotes']
      rating.save!
      count += 1
      print("\nSaved Ratings for #{record['tconst']}")
    end
    print("Saved all #{count} records")
  end
end