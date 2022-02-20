FactoryBot.define do
  
  factory :user do
    id{1}
    name {"sample"}
    email {"test@sample.com"}
    is_deleted:false
  end

  factory :goal do

    trait :a do
      id {1}
      user_id{1}
      steps {300}
      term {30}
      penalties {1000}
      is_achieved = false
      is_deleted = false
      association :user
    end

    trait :b do
      id {2}
      steps {600}
      term {60}
      penalties {2000}
      # is_achieved false
      # is_deleted false
    end
  end
end
