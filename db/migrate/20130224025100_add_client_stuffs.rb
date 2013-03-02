class AddClientStuffs < ActiveRecord::Migration

  def change
  	add_column :people, :type, :string

  	#individual
  	add_column :people, :affiliation, :string
  	add_column :people, :birthday, :datetime
  	add_column :people, :sex, :string

  		#counselee
  		add_column :people, :occupation, :string
  		add_column :people, :education, :string
  		add_column :people, :religion, :string
  		add_column :people, :problems, :string #serialize
  		add_column :people, :previousCounseling_name, :string
  		add_column :people, :previousCounseling_when, :datetime
  		add_column :people, :previousCounseling_where, :string
  		add_column :people, :previousCounseling_result, :string
  		add_column :people, :last_checkup_date, :datetime
  		add_column :people, :marriage_date, :datetime
  		add_column :people, :marriage_status, :string

  	#organization
    add_column :people, :contact_person, :string
    add_column :people, :org_nature, :string
    add_column :people, :officials_name, :string
    add_column :people, :officials_designation, :string

  end
end