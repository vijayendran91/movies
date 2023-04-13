class CreateCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :crews do |t|
      t.string :tconst
      t.text :directors, array: true
      t.text :writers, array: true
      t.index :tconst
      t.timestamps
    end
  end
end
