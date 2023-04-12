class ChangeColumnNullForTitles < ActiveRecord::Migration[7.0]
  def change
    change_column_null :titles, :tconst, true
    change_column_null :titles, :movie_type, true
    change_column_null :titles, :adult, true
    change_column_null :titles, :syear, true
    change_column_null :titles, :eyear, true
    change_column_null :titles, :run_time, true
    change_column_null :titles, :genres, true
  end
end
