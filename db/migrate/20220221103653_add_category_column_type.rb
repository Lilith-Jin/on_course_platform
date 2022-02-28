class AddCategoryColumnType < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :category, :integer
  end
end
