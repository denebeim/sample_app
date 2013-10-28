FactoryGirl.define do
  factory :user do
    name     "Jay Denebeim"
    email    "denebeim@deepthot.org"
    password "foobar"
    password_confirmation "foobar"
  end
end
