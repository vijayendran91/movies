class ChangeColumnNullForTitlesPtitle < ActiveRecord::Migration[7.0]
  def change
    change_column_null :titles, :ptitle, true
    change_column_null :titles, :otitle, true
  end
end
