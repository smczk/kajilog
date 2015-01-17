FactoryGirl.define do
  factory :truthy_user, class: User do
    email  "truthy@email.com"
    password  "password"
    password_confirmation  "password"
  end

  factory :falsey_user, class: User do
    email  "falsey@email.com"
    password  "pasword"
    password_confirmation  "pasword"
  end
end
