class CreateCounselingSessions < ActiveRecord::Migration
  def change
    create_table :counseling_sessions do |t|
      t.datetime :startTime
      t.datetime :endTime
      t.string :location
      t.string :counselorName
      t.string :counseleeName
      t.string :counselor_id
      t.string :counselee_id

      t.timestamps
    end
  end
end
