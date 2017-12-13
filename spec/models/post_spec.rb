require 'rails_helper'

RSpec.describe Post, type: :model do
 describe "Creation" do
   before do
     @user=  @user = User.create(email:"test@test.com", password:"asdfasf", password_confirmation: "asdfasf", first_name:"Carlos",last_name:"Sosa")
     @post = Post.create(date: Date.today(), rationale: "Anything", user: @user)
   end
   it "can be created" do
     expect(@post).to be_valid
   end
   it "can not be created without date and rationale" do
     @post.date = nil
     @post.rationale = nil
     expect(@post).to_not be_valid
   end
 end
end
