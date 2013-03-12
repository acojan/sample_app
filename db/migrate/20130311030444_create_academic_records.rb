class CreateAcademicRecords < ActiveRecord::Migration
  def change
    create_table :academic_records do |t|
      t.string :level
      t.string :school
      t.string :periodAttended
      t.string :degree

      t.timestamps
    end
  end
end
