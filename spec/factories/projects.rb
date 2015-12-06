FactoryGirl.define do 
	
	factory :project do |f|
    f.sequence(:name) {|n| "#{n}MyString"}
    f.description "MyText"
    f.owner_id 1
    trait :poetry do
      after(:create) { |project| project.update_attributes(tag_list: 'poetry') }
    end
  end

end
