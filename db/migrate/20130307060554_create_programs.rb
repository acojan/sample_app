class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :programId
      t.string :programName
      t.integer :startYear
      t.integer :endYear
      t.string :student_id
      t.string :alumni_id

      t.timestamps
    end
  end
end
