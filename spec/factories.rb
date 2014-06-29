FactoryGirl.define do 
	factory :user do 
		name 						"Michael Hartl"
		email 						"michael@example.com"
		password					"foobar00"
		password_confirmation 		"foobar00"
	end 
end