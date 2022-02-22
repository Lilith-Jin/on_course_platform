class ChangeCategoryColumnType < ActiveRecord::Migration[6.1]
  def change
    remove_column :courses, :category
  end
end
