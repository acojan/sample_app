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

class Program < ActiveRecord::Base
  belongs_to :alumni
  belongs_to :student
  attr_accessible :alumni_id, :endYear, :programId, :programName, :startYear, :student_id
end
