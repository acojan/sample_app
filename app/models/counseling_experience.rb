# == Schema Information
#
# Table name: counseling_experiences
#
#  id           :integer          not null, primary key
#  courseName   :string(255)
#  conductedBy  :string(255)
#  counselor_id :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class CounselingExperience < ActiveRecord::Base
  belongs_to :counselor
  attr_accessible :conductedBy, :counselor_id, :courseName
end
