class AddIndexUrlColumnOnCourses < ActiveRecord::Migration[6.1]
  def change
    add_index :courses, :url, :unique => true

    Course.find_each do |e|
      e.update( :url => SecureRandom.uuid )
    end
  end
end
