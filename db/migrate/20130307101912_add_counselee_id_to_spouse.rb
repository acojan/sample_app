class AddCounseleeIdToSpouse < ActiveRecord::Migration
  def change
  	add_column :spouses, :counselee_id, :string
  	add_column :others, :counselee_id, :string
  end
end
