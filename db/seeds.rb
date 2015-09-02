smb = Entity.create(classification: 'smb', name: 'Mr. Robot', logo: 'Team Playin ping-pong')
enterprise = Entity.create(classification: 'enterprise', name: 'Evil Corp', logo: 'Team in business suits laughing')

User.create(email: 'smb@example.com', entity: smb)
User.create(email: 'enterprise@example.com', entity: enterprise)
