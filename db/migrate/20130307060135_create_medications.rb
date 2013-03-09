class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :medicationName
      t.string :dosage
      t.string :counselee_id
      t.string :counselor_id

      t.timestamps
    end
  end
end
