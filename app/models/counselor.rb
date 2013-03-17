# == Schema Information
#
# Table name: people
#
#  id                        :integer          not null, primary key
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  name                      :string(255)
#  street                    :string(255)
#  city                      :string(255)
#  province                  :string(255)
#  email                     :string(255)
#  landline                  :string(255)
#  mobile                    :string(255)
#  type                      :string(255)
#  affiliation               :string(255)
#  birthday                  :datetime
#  sex                       :string(255)
#  occupation                :string(255)
#  education                 :string(255)
#  religion                  :string(255)
#  problems                  :string(255)
#  previousCounseling_name   :string(255)
#  previousCounseling_when   :datetime
#  previousCounseling_where  :string(255)
#  previousCounseling_result :string(255)
#  last_checkup_date         :datetime
#  marriage_date             :datetime
#  marriage_status           :string(255)
#  contact_person            :string(255)
#  org_nature                :string(255)
#  officials_name            :string(255)
#  officials_designation     :string(255)
#  otherSkills               :string(255)
#  isCounselee               :boolean          default(FALSE)
#  isCounselor               :boolean          default(FALSE)
#  age                       :integer
#  childAges                 :string(255)
#

class Counselor < Person
	has_many :availabilities, :dependent => :destroy
	has_many :counselees, :through => :counseling_sessions, :dependent => :destroy
	has_many :clusters, :dependent => :destroy
	has_many :spouses, :dependent => :destroy
	has_many :work_experiences, :dependent => :destroy
	has_many :academic_records, :dependent => :destroy 
	has_many :counseling_experiences, :dependent => :destroy
	has_many :skills, :dependent => :destroy

	has_many :counseling_sessions, :dependent => :destroy
	has_many :counselors, :through => :counseling_sessions

	accepts_nested_attributes_for :skills, :allow_destroy => true
	accepts_nested_attributes_for :availabilities, :allow_destroy => true, :reject_if => proc { |attributes| attributes['day'].blank? }
	accepts_nested_attributes_for :spouses, :allow_destroy => true, :reject_if => proc { |attributes| attributes['name'].blank? }
	accepts_nested_attributes_for :counseling_experiences, :allow_destroy => true, :reject_if => proc { |attributes| attributes['courseName'].blank? }
	accepts_nested_attributes_for :work_experiences, :allow_destroy => true, :reject_if => proc { |attributes| attributes['previousWork'].blank? }
	accepts_nested_attributes_for :clusters, :allow_destroy => true, :reject_if => proc { |attributes| attributes['clusterName'].blank? }
	accepts_nested_attributes_for :academic_records, :allow_destroy => true, :reject_if => proc { |attributes| attributes['name'].blank? }

    attr_protected
end
