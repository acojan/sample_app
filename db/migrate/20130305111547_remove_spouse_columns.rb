class RemoveSpouseColumns < ActiveRecord::Migration
  def change
  	remove_column	:people, :cSpouse_name, :string
  	remove_column	:people, :cSpouse_religion, :string
  	remove_column	:people, :cSpouse_workaffil, :string
  end
end
