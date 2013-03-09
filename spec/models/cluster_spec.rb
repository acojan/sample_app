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

require 'spec_helper'

describe Cluster do
  pending "add some examples to (or delete) #{__FILE__}"
end
