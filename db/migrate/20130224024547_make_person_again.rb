class MakePersonAgain < ActiveRecord::Migration
  def change
  	add_column :people, :name, :string
  	add_column :people, :street, :string
  	add_column :people, :city, :string
  	add_column :people, :province, :string
  	add_column :people, :email, :string
  	add_column :people, :landline, :string
  	add_column :people, :mobile, :string
end
end
