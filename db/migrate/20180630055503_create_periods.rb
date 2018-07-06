class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|
      t.datetime :StartTime
      t.datetime :EndTime


      t.timestamps
    end
  end
end
