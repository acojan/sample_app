# == Schema Information
#
# Table name: growth_groups
#
#  id          :integer          not null, primary key
#  groupId     :string(255)
#  facilitator :string(255)
#  year        :integer
#  student_id  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe GrowthGroup do
  pending "add some examples to (or delete) #{__FILE__}"
end
