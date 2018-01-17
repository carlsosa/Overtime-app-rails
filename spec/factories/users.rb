FactoryGirl.define do
    sequence :email do |n|
        "test#{n}@example.com"
    end
    factory :user do
       first_name "Carlos"
       last_name "Sosa"
       email {generate :email}
       password "asdfasf"
       password_confirmation "asdfasf"

    end
    
    factory :admin_user, class: "AdminUser" do
        first_name "Admin"
        last_name "Sosa"
        email {generate :email}
        password "asdfasf"
        password_confirmation "asdfasf"

    end
end