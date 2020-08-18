FactoryBot.define do
	factory :task do
		name { FFaker::Name.name }
		description { FFaker::Lorem.paragraph }
		points { 1 }
	end
end