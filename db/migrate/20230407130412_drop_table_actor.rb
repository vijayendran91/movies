class DropTableActor < ActiveRecord::Migration[7.0]
  def change
    drop_table :actor_tables
  end
end
