class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|

      t.string :name
      t.string :street
      t.string :city	
      t.string :province
      t.string :email
      t.string :landline
      t.string :mobile
      t.timestamps

    end
  end
end
