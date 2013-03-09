# == Schema Information
#
# Table name: work_experiences
#
#  id           :integer          not null, primary key
#  previousWork :string(255)
#  positionHeld :string(255)
#  counselor_id :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe WorkExperience do
  pending "add some examples to (or delete) #{__FILE__}"
end
