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

require 'spec_helper'

describe Service do
  pending "add some examples to (or delete) #{__FILE__}"
end
