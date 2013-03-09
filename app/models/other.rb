# == Schema Information
#
# Table name: others
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  age          :integer
#  occupation   :string(255)
#  relation     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  counselee_id :string(255)
#

class Other < ActiveRecord::Base
  belongs_to :counselee
  attr_accessible :age, :name, :occupation, :relation, :counselee_id
end
