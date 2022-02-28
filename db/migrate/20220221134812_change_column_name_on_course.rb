class ChangeColumnNameOnCourse < ActiveRecord::Migration[6.1]
  def change
    rename_column :courses, :shelf, :state
  end
end
