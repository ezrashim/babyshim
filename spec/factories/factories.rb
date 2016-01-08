FactoryGirl.define do
  factory :comment do
    sequence(:first_name) {|n| "Ezra#{n}"}
    sequence(:last_name) {|n| "Shim#{n}"}
    sequence(:email) {|n| "#{n}@gmail.com"}
    sequence(:comment) {|n| "#{n}. This is a message. Congratz Jean and Ezra!"}
  end
end
