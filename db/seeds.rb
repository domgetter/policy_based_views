smb = Entity.create(classification: 'smb', name: 'Mr. Robot', logo: 'Team Playin ping-pong')
enterprise = Entity.create(classification: 'enterprise', name: 'Evil Corp', logo: 'Team in business suits laughing')

User.create(email: 'smb@example.com', entity: smb, password: 'password')
User.create(email: 'enterprise@example.com', entity: enterprise, password: 'password')

business = Genre.create(name: 'Business')
fiction = Genre.create(name: 'Fiction')

25.times do |i|
  genre = [business, fiction].sample
  Book.create(title: Faker::Book.title, author: Faker::Name.name, genre: genre)
end
