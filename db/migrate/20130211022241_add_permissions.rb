class AddPermissions < ActiveRecord::Migration
  def up
  	add_column :users, :admin, :boolean, :default => true
  end

  def down
  end
end
