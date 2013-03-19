# == Schema Information
#
# Table name: services
#
#  id              :integer          not null, primary key
#  serviceId       :string(255)
#  serviceName     :string(255)
#  serviceNature   :string(255)
#  hours           :integer
#  year            :integer
#  staff_id        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  individual_id   :string(255)
#  organization_id :string(255)
#

class Service < ActiveRecord::Base
  belongs_to :individual
  belongs_to :organization 
  belongs_to :staff
  attr_accessible :individual_id, :organization_id, :hours, :serviceId, :serviceName, :serviceNature, :staff_id, :year
end
