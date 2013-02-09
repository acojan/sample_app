require 'spec_helper'

describe "UserPages" do
subject {page}

  describe "create user page" do
    before {visit createUser_path}

    	it {should have_selector('h1', text: 'Creating New User')}
    	it {should have_selector('title', text: 'Sign Up')}
    end
end
