class RemoveShelfColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :courses, :shelf, :string
  end
end
