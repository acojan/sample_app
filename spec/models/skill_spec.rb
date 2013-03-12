# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  teaching       :boolean
#  facilitation   :boolean
#  events         :boolean
#  administration :boolean
#  fundRaising    :boolean
#  courseDev      :boolean
#  projects       :boolean
#  presentations  :boolean
#  workshops      :boolean
#  others         :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  counselor_id   :string(255)
#

require 'spec_helper'

describe Skill do
  pending "add some examples to (or delete) #{__FILE__}"
end
