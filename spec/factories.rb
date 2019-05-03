FactoryBot.define do
  factory :paragraph do
    sequence :author do |n|
      "Author ##{n}"
    end
    text { "Hello!" }
  end
end
