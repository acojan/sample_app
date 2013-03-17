# == Schema Information
#
# Table name: spouses
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  age          :integer
#  education    :string(255)
#  religion     :string(255)
#  email        :string(255)
#  landline     :string(255)
#  mobile       :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  counselee_id :string(255)
#  counselor_id :string(255)
#

require 'spec_helper'

describe Spouse do
  pending "add some examples to (or delete) #{__FILE__}"
end
