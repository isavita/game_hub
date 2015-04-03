CountryCodes = ['BG', 'UK', 'US'] # TODO: Make some global hash for these in a global module
Genres = ['action',  'rally', 'rpg',  'other'] # TODO: Replace this with genres hash and change the column to integer
GameStates = { draft: 0,
  published: 1,
  rejected: 3,
} # TODO: Move this to comman module 

# Clean all objects from the seed before make a new seed
User.delete_all
Game.delete_all

10.times do |i|
  User.create(first_name: Faker::Name.first_name,
    middle_name: Faker::Name.parent_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(2),
    email: "user#{i}@example.com",
    password: '11223344',
    nickname: Faker::Lorem.word,
    clan: Faker::Lorem.word,
    avatar: Faker::Avatar.image,
    country_code: CountryCodes[rand(3)],
  )
end

user_count = User.count
5.times do |i|
  Game.create(name: Faker::Name,
    user_id: User.offset(user_count - 1).first.id,
    rank: Faker::Number.number(1),
    producer: Faker::Lorem.word,
    state: GameStates[(i < 3 ? :published : :draft)],
    genre: Genres[rand(4)],
  )
end