class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :serviceId
      t.string :serviceName
      t.string :serviceNature
      t.integer :hours
      t.integer :year
      t.string :staff_id
      t.string :client_id

      t.timestamps
    end
  end
end
