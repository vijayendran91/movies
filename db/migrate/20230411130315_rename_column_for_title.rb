class RenameColumnForTitle < ActiveRecord::Migration[7.0]
  def change
    rename_column :titles, :type, :movie_type
  end
end
