# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  programId   :string(255)
#  programName :string(255)
#  startYear   :integer
#  endYear     :integer
#  student_id  :string(255)
#  alumni_id   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Program do
  pending "add some examples to (or delete) #{__FILE__}"
end
