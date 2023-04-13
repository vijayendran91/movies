require 'csv'

namespace :import do
  task crew: :environment do
    file = CSV.read('imports/title_crew.tsv', col_sep: "\t", headers: true)
    file.delete(0)
    count = 0
    file.each do |record|
      crew = Crew.new
      crew[:tconst] = record['tconst']
      crew[:directors] = record['directors'].nil? || record['directors'].empty? ? nil : record['directors']
      crew[:writers] = record['writers'].nil? || record['writers'].empty? ? nil : record['writers']
      crew.save!
      count += 1
      print("\nSaved #{record['tconst']}")
    end
    print("Saved all #{count} records")
  end
end
