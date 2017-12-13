@user = User.create(email:"test@test.com", password:"asdfasf", password_confirmation: "asdfasf", first_name:"Carlos",last_name:"Sosa")

puts "an user was created"

100.times do |post|
  Post.create!(date: Date.today + post, rationale: "#{post} rationale content #{post}", user: @user)
end

puts "100 Posts have been created"
