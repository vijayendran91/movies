require 'csv'

namespace :import do
  task actors: :environment do
    file = CSV.read('imports/actors_data.tsv', col_sep: "\t", headers: true)
    file.delete(0)
    count = 0
    file.each do |record|
      actor = Actor.new
      actor[:name] = record['primaryName']
      actor[:nconst] = record['nconst']
      actor[:prof] =  (record['primaryProfession'].nil? || record['primaryProfession'].empty? )? "" : record['primaryProfession'].split(',')
      actor[:yob] = record['birthYear']
      actor[:yod] = record['deathYear']
      actor[:top_titles] = (record['knownForTitles'].nil? || record['knownForTitles'].empty?) ? "" : record['knownForTitles'].split(',')
      actor.save!
      count += 1
      print("\nSaved #{record['primaryName']}")
    end
    print("Saved all #{count} records")
  end
end