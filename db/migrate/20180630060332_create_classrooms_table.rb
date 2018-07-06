class CreateClassroomsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.string :room_number
      
      t.timestamps
    end
  end
end
