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

class Problem < ActiveRecord::Base
  belongs_to :counselee
  attr_accessible :child, :family, :marriage, :others, :parentChild, :personal, :premarital
end
