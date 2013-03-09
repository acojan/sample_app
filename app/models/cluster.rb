# == Schema Information
#
# Table name: clusters
#
#  id                  :integer          not null, primary key
#  clusterId           :string(255)
#  clusterName         :string(255)
#  clusterInvolvement  :string(255)
#  possibleInvolvement :string(255)
#  counselor_id        :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Cluster < ActiveRecord::Base
  belongs_to :counselor
  attr_accessible :clusterId, :clusterInvolvement, :clusterName, :counselor_id, :possibleInvolvement
end
