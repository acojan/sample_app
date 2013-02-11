require 'spec_helper'

describe User do

  before do
  @user = User.new(name: "Example User", email: "user@example.com", password: "samplepass", password_confirmation: "samplepass")
  end
  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest)}
  it { should respond_to(:password)}
  it { should respond_to(:password_confirmation)}
  it { should respond_to(:authenticate)}
  it { should be_valid }


  describe "when name is not present" do
  	before {@user.name = " "}
  	it {should_not be_valid}
  end

  describe "when email is not present" do
  	before {@user.email = " "}
  	it {should_not be_valid}
  end

  describe "when name is too damn long" do
  	before {@user.name = "a"*51}
  	it {should_not be_valid}
  end

  describe "when email address is not unique" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email = @user.email.upcase
      user_with_same_email.save
    it {should_not be_valid}
    end
  end

  describe "when password field is empty" do
    before {@user.password = @user.password_confirmation = " "}
    it {should_not be_valid}
  end

  describe "when password doesn't match re-entry confirmation" do
    before {@user.password = "nigga", @user.password_confirmation = "please"}
    it {should_not be_valid}
  end 

  describe "with a password that should be longer" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
  before { @user.save }
  let(:found_user) { User.find_by_email(@user.email) }

  describe "with valid password" do
    it { should == found_user.authenticate(@user.password) }
  end

  describe "with invalid password" do
    let(:user_for_invalid_password) { found_user.authenticate("bullshit") }

    it { should_not == user_for_invalid_password }
    specify { user_for_invalid_password.should be_false }
  end
  end
  
end

