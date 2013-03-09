# == Schema Information
#
# Table name: availabilities
#
#  id           :integer          not null, primary key
#  day          :string(255)
#  startTime    :datetime
#  endTime      :datetime
#  location     :string(255)
#  counselor_id :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Availability do
  pending "add some examples to (or delete) #{__FILE__}"
end
