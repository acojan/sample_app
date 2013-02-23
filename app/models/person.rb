# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  street     :string(255)
#  city       :string(255)
#  province   :string(255)
#  email      :string(255)
#  landline   :string(255)
#  mobile     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
   attr_accessible :name, :street, :city, :province, :email, :landline, :mobile
end
