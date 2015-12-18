
# This will guess the User class
FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "user#{n}@foobar.com" }
    password  "foobar50"
  end



# http://www.rubydoc.info/gems/factory_girl/file/GETTING_STARTED.md


  factory :task do
    sequence(:name) { |n| "takes \##{n}"}
    sequence(:content) { |n| "number #{n} of content"}
    created_at Time.now
    association :owner, factory: :user
  end


end