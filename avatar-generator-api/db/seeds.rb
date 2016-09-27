10.times do 
  Avatar.create(
    image: Faker::Avatar.image,
    name: Faker::Superhero.name)
end