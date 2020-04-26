User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobars1",
             password_confirmation: "foobars1",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
