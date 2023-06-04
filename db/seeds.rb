require 'faker'

#super usuario
User.create!(
  email: 'kari@example.com',
  password: '123456',
  password_confirmation: '123456',
  img_profile: nil,
  admin: true
)

#normal usuario
User.create!(
  email: 'jose@example.com',
  password: '123456',
  password_confirmation: '123456',
  img_profile: nil,
  admin: false
)


10.times do
  User.create!(
    email: Faker::Internet.email,
    password: '123456',
    password_confirmation: '123456',
    img_profile: nil,
    admin: false
  )
end
