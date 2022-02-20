class AddDefaultValueToValidDateColumn < ActiveRecord::Migration[6.1]
  def change
    change_column_default :courses, :valid_date, from: nil, to: 1
  end
end
