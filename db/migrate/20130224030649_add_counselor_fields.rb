class AddCounselorFields < ActiveRecord::Migration
  def change

  	add_column :people, :otherSkills, :string #serialize
  	add_column :people, :cSpouse_name, :string
  	add_column :people, :cSpouse_religion, :string
  	add_column :people, :cSpouse_workaffil, :string
  
  end
end
