require 'spec_helper'

describe "UserPages" do
subject {page}

   describe "create user page" do
     before {visit createUser_path}

    	it {should have_selector('h1', text: 'Creating New User')}
    	it {should have_selector('title', text: 'Sign Up')}
    end

   describe "show profile page" do
   	 let(:user){FactoryGirl.create(:user)}
     before {visit user_path(user)}

    	it{should have_selector('h1', text: user.name)}
    	it{should have_selector('title', text: user.name)}
    end 

    describe "signup" do
    before { visit newUser_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        choose("user_admin_true")
        fill_in "Confirmation", with: "foobar"
        
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end