class AddCounselorIdToAcademicRecord < ActiveRecord::Migration
  def change
  	add_column :academic_records, :counselor_id, :string
  end
end
