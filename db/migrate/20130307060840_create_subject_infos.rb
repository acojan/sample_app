class CreateSubjectInfos < ActiveRecord::Migration
  def change
    create_table :subject_infos do |t|
      t.string :subjectId
      t.string :subjectName
      t.string :grade
      t.string :student_id

      t.timestamps
    end
  end
end
