class RemoveSpouseColumns < ActiveRecord::Migration
  def change
  	remove_column	:people, :cSpouse_name
  	remove_column	:people, :cSpouse_religion
  	remove_column	:people, :cSpouse_workaffil
  end
end
