class CreateActorTable < ActiveRecord::Migration[7.0]
  def change
    create_table :actor_tables do |t|
      t.string :nconst, null: false
      t.text :prof, array: true, default: []
      t.string :name, null: false
      t.string :yob, null: true
      t.string :yod, null: true
      t.text :top_titles, array: true, default: []
      t.timestamps
    end
  end
end
