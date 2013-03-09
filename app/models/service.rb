# == Schema Information
#
# Table name: services
#
#  id            :integer          not null, primary key
#  serviceId     :string(255)
#  serviceName   :string(255)
#  serviceNature :string(255)
#  hours         :integer
#  year          :integer
#  staff_id      :string(255)
#  client_id     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Service < ActiveRecord::Base
  belongs_to :client 
  belongs_to :staff
  attr_accessible :client_id, :hours, :serviceId, :serviceName, :serviceNature, :staff_id, :year
end
