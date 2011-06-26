Factory.define :user do |f|
  f.name 'John Doe'
  f.sequence(:login) { |n| "jdoe#{n}" }
  f.password 'password'
  f.password_confirmation 'password'
  f.sequence(:email) { |n| "john-doe-#{n}@example.com" }
end

Factory.define :jsmith, :parent => :user do |f|
  f.name 'John Smith'
  f.login 'jsmith'
end
