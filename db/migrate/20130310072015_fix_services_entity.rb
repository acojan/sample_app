class FixServicesEntity < ActiveRecord::Migration
  def change
  	add_column	:services, :individual_id, :string
  	add_column	:services, :organization_id, :string
  	remove_column :services, :client_id
end
end