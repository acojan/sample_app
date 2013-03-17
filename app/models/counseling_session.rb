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

class CounselingSession < ActiveRecord::Base
  belongs_to :counselee
  belongs_to :counselor
  attr_accessible :counseleeName, :counselee_id, :counselorName, :counselor_id, :endTime, :location, :startTime

  def setNames
  	self.counseleeName = self.counselee.name
  	self.counselorName = self.counselor.name
  end

end
