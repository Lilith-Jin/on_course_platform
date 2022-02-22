class AddNewColumnToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :period, :integer
  end
end
