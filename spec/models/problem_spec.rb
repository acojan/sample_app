# == Schema Information
#
# Table name: problems
#
#  id           :integer          not null, primary key
#  premarital   :boolean
#  marriage     :boolean
#  family       :boolean
#  parentChild  :boolean
#  child        :boolean
#  personal     :boolean
#  others       :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  counselee_id :string(255)
#

require 'spec_helper'

describe Problem do
  pending "add some examples to (or delete) #{__FILE__}"
end
