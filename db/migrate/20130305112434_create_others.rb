class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :name
      t.integer :age
      t.string :occupation
      t.string :relation

      t.timestamps
    end
  end
end
