require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email:"test@test.com", password:"asdfasf", password_confirmation: "asdfasf", first_name:"Carlos",last_name:"Sosa")

    end
    it "can be created" do
      expect(@user).to be_valid
    end
    it "cannot be created wihout firstname and lastname" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    describe "custom name methods" do
      it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq("SOSA, CARLOS")
  end
 end
end
end
