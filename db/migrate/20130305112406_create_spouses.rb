class CreateSpouses < ActiveRecord::Migration
  def change
    create_table :spouses do |t|
      t.string :name
      t.integer :age
      t.string :education
      t.string :religion
      t.string :email
      t.string :landline
      t.string :mobile

      t.timestamps
    end
  end
end
