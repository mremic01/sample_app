# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end


#added this at the end of ch11 to get tests passing for get index in users controller
Factory.sequence :name do |n|
  "person-#{n}"
end


Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end
