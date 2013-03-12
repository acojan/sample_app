class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.boolean :teaching
      t.boolean :facilitation
      t.boolean :events
      t.boolean :administration
      t.boolean :fundRaising
      t.boolean :courseDev
      t.boolean :projects
      t.boolean :presentations
      t.boolean :workshops
      t.text :others

      t.timestamps
    end
  end
end
