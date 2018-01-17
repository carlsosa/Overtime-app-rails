require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    #@user= User.create(email:"test@test.com", password:"asdfasf", password_confirmation: "asdfasf", first_name:"Carlos",last_name:"Sosa")
    @user = FactoryGirl.create(:user)
    @post = Post.create(date: Date.today(), rationale: "Anything", user: @user)
  end
 describe "Creation" do
   it "can be created" do
     expect(@post).to be_valid
   end
   it "can not be created without date and rationale" do
     @post.date = nil
     @post.rationale = nil
     expect(@post).to_not be_valid
   end
 end

  describe "fullname method" do
    it 'has a method that return the first and last name' do
      expect(@user.full_name).to eq("SOSA, CARLOS")
    end
  end
end
