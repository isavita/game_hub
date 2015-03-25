CountryCodes = ['BG', 'UK', 'US']
10.times do 
  User.create(first_name: Faker::Name.first_name,
    middle_name: Faker::Name.parent_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(2),
    email: Faker::Internet.email,
    password: '11223344',
    nickname: Faker::Lorem.word,
    clan: Faker::Lorem.word,
    avatar: Faker::Avatar.image,
    country_code: CountryCodes[rand(3)]
  )
end