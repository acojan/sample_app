# == Schema Information
#
# Table name: children
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  age          :integer
#  counselor_id :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Children < ActiveRecord::Base
  belongs_to :counselor
  attr_accessible :age, :counselor_id, :name
end
