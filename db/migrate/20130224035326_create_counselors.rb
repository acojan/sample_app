class CreateCounselors < ActiveRecord::Migration
  def change
    create_table :counselors do |t|

      t.timestamps
    end
  end
end
