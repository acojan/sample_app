class AddBooleans < ActiveRecord::Migration
  def change

  	add_column :people, :isCounselee, :boolean, :default => false 
  	add_column :people, :isCounselor, :boolean, :default => false
  end
end
