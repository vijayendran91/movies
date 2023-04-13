class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :tconst
      t.float :avg_rating
      t.integer :no_votes
      t.index :tconst
      t.index :id
      t.timestamps
    end
  end
end
