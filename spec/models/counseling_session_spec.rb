# == Schema Information
#
# Table name: counseling_sessions
#
#  id            :integer          not null, primary key
#  startTime     :datetime
#  endTime       :datetime
#  location      :string(255)
#  counselorName :string(255)
#  counseleeName :string(255)
#  counselor_id  :string(255)
#  counselee_id  :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe CounselingSession do
  pending "add some examples to (or delete) #{__FILE__}"
end
