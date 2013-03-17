class AddCounseleeIdToSpouses < ActiveRecord::Migration
  def change
  	add_column :spouses, :counselor_id, :string
  	add_column :people, :childAges, :string
  	
  end
end
