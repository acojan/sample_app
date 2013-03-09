class AddAgeToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :age, :int
  end
end
