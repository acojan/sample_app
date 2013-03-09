class BoboSiEnzo < ActiveRecord::Migration
  def change
  	remove_column :medications, :counselor_id, :string
  end
end
