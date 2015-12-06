FactoryGirl.define do 
	
	factory :project do |f|
    f.sequence(:name) {|n| "#{n}MyString"}
    f.description "MyText"
    f.owner_id 1
  end
  
end
