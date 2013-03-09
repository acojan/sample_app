class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day
      t.datetime :startTime
      t.datetime :endTime
      t.string :location
      t.string :counselor_id

      t.timestamps
    end
  end
end
