FactoryGirl.define do

  factory :quality do 
    description "genius"
  end

  factory :swill, class: Quality do 
    description "swill"
  end

end