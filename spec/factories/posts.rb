if Rails.env.test? || Rails.env.development?
FactoryGirl.define do

    factory :post do
       date Date.today
       rationale "Some Rationale" 
     #  user FactoryGirl.build_stubbed(:user)
    end

    factory :second_post, class: "Post" do
          date Date.yesterday
          rationale "Some more Rationale"
       #  user FactoryGirl.build_stubbed(:admin_user)
     end
     
end
end