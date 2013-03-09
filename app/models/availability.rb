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

class Availability < ActiveRecord::Base
  belongs_to :counselor
  attr_accessible :counselor_id, :day, :endTime, :location, :startTime
end
