class DropActorsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :actors_tables
  end
end
