class CreateGrowthGroups < ActiveRecord::Migration
  def change
    create_table :growth_groups do |t|
      t.string :groupId
      t.string :facilitator
      t.integer :year
      t.string :student_id

      t.timestamps
    end
  end
end
