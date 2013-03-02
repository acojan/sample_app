class CreateCounselees < ActiveRecord::Migration
  def change
    create_table :counselees do |t|

      t.timestamps
    end
  end
end
