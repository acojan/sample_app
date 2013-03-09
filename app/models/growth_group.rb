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

class GrowthGroup < ActiveRecord::Base
  belongs_to :student
  attr_accessible :facilitator, :groupId, :student_id, :year
end
