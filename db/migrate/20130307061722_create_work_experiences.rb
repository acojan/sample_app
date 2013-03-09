class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :previousWork
      t.string :positionHeld
      t.string :counselor_id

      t.timestamps
    end
  end
end
