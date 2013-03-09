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

require 'spec_helper'

describe CounselingExperience do
  pending "add some examples to (or delete) #{__FILE__}"
end
