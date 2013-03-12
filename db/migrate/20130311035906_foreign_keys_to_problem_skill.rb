class ForeignKeysToProblemSkill < ActiveRecord::Migration
  def change
  	add_column :skills, :counselor_id, :string
  	add_column :problems, :counselee_id, :string
  end
end
