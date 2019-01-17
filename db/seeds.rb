BrewBatch.create!(name: 'Beize Weize').issue_voices!(10)
BrewBatch.create!(name: 'Brewtal Legend').issue_voices!(10)
BrewBatch.create!(name: 'Schunkel Dunkel').issue_voices!(10)

User.create!(email: 'bieri@example.com', voices: Voice.all.sample(5))
User.create!(email: 'birnbaum@example.com', voices: Voice.all.sample(3))
User.create!(email: 'birwinken@example.com')
