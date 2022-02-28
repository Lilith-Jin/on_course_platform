class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :theme
      t.integer :price
      t.string :type
      t.boolean :shelf
      t.text :intro
      t.integer :valid_date
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
