FactoryGirl.define do
  factory :user do 
    sequence(:email) { Faker::Internet.email } 
    password "password"
    password_confirmation "password"
  end
  
  factory :merchant do
    sequence(:name) { Faker::Company.name }
    sequence(:address) { Faker::Address.city }
    sequence(:url) { Faker::Internet.domain_name }
  end

  factory :deal do
    user
    merchant
    sequence(:price) {|n| n*12 }
    sequence(:description) { Faker::Lorem.word.capitalize+ " Massage" }
    sequence(:url) {|n| "http://www.livingsocial.com/#{n}"}
    expiry Time.now

    trait :active do
      expiry 1.day.from_now
    end

    trait :expired do
      expiry 1.day.ago
    end

    factory :active_deal, traits: [:active]
    factory :expired_deal, traits: [:expired]
  end
end
