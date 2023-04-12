class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :tconst, null: false
      t.string :type, null: false
      t.string :ptitle, null: false
      t.string :otitle, null: false
      t.boolean :adult, null: false
      t.string :syear, null: false
      t.string :eyear, null: false
      t.string :run_time, null: false
      t.text :genres, array: true, null: false
      t.timestamps
    end
  end
end
