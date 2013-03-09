# == Schema Information
#
# Table name: subject_infos
#
#  id          :integer          not null, primary key
#  subjectId   :string(255)
#  subjectName :string(255)
#  grade       :string(255)
#  student_id  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe SubjectInfo do
  pending "add some examples to (or delete) #{__FILE__}"
end
