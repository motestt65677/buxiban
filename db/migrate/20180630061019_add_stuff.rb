class AddStuff < ActiveRecord::Migration[5.1]
  def change
    remove_column :periods, :StartTime
    remove_column :periods, :EndTime
    add_column :periods, :start_time, :datetime
    add_column :periods, :end_time, :datetime
    add_reference :periods, :courses, index: true, foreign_key: true

  end
end
