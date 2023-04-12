require 'csv'

namespace :import do
  task titles: :environment do
    file = CSV.read('imports/title_data_ad.tsv', col_sep: "\t", headers: true, liberal_parsing: true)
    count = 0
    file.each do |record|
      title = Title.new
      title[:tconst] = record['tconst']
      title[:movie_type] = record['titleType']
      title[:ptitle] = record['primaryTitle']
      title[:otitle] = record['originalTitle']
      title[:adult] = record['isAdult']
      title[:syear] = record['startYear']
      title[:eyear] = (record['endYear'].nil? || record['endYear'].empty?) ? nil : record['endYear']
      title[:run_time] = (record['runtimeMinutes'].nil? || record['runtimeMinutes'].empty?) ? nil : record['runtimeMinutes']
      title[:genres] = record['genres']
      title.save!
      count += 1
      print("\nSaved #{record['primaryTitle']}")
    end
    print("Saved all #{count} records")
  end
end