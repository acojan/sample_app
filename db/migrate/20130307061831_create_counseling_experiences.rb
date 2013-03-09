class CreateCounselingExperiences < ActiveRecord::Migration
  def change
    create_table :counseling_experiences do |t|
      t.string :courseName
      t.string :conductedBy
      t.string :counselor_id

      t.timestamps
    end
  end
end
