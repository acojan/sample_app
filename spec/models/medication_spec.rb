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

require 'spec_helper'

describe Medication do
  pending "add some examples to (or delete) #{__FILE__}"
end
