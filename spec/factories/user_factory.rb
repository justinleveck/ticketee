FactoryGirl.define do
	sequence(:email) {|n| "user#{n}@example.com" }

	factory :user do
			name "justin"
			email { generate(:email) }
			password "password2"
			password_confirmation "password2"
	end
end