# == Schema Information
#
# Table name: academic_records
#
#  id             :integer          not null, primary key
#  level          :string(255)
#  school         :string(255)
#  periodAttended :string(255)
#  degree         :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe AcademicRecord do
  pending "add some examples to (or delete) #{__FILE__}"
end
