# == Schema Information
#
# Table name: medications
#
#  id             :integer          not null, primary key
#  medicationName :string(255)
#  dosage         :string(255)
#  counselee_id   :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Medication < ActiveRecord::Base
  belongs_to :counselee
  attr_accessible :counselee_id, :dosage, :medicationName
end
