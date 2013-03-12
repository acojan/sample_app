class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.boolean :premarital
      t.boolean :marriage
      t.boolean :family
      t.boolean :parentChild
      t.boolean :child
      t.boolean :personal
      t.text :others

      t.timestamps
    end
  end
end
