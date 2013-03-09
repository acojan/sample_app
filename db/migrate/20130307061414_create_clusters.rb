class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :clusterId
      t.string :clusterName
      t.string :clusterInvolvement
      t.string :possibleInvolvement
      t.string :counselor_id

      t.timestamps
    end
  end
end
