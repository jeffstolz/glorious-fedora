FactoryGirl.define do
  factory :user do
    email "jstolz123@gmail.com"
    password "noneyabusiness"
  end
  factory :place do
    name "Sample place"
    description "Sample description"
    address "Sample address"
  end  
  factory :comment do
    message "Sample comment"
    rating "one_star"
  end   
end