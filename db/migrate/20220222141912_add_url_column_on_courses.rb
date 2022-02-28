class AddUrlColumnOnCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :url, :string
  end
end
