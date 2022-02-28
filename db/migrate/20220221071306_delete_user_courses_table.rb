class DeleteUserCoursesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_courses
  end
end
