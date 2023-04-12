class AddIndexForTitles < ActiveRecord::Migration[7.0]
  def change
    add_index :titles, :tconst
    add_index :titles, :id
    add_index :actors, :nconst
  end
end
