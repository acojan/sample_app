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

class SubjectInfo < ActiveRecord::Base
  belongs_to :student
  attr_accessible :grade, :student_id, :subjectId, :subjectName
end
