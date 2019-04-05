BrewBatch.create!(
  name: 'Beize Weize',
  description: 'Als Weizenbier werden Biere bezeichnet, die mit Weizen und/oder Weizenmalz hergestellt werden. Bezeichnungen für diese Biere sind Weizen, Weißes und Weiße. „Weizen“ und „weiß“ besitzen denselben etymologischen Ursprung. Weizenbiere werden meist obergärig gebraut. Umgangssprachlich wird der Ausdruck „Weißbier“ vor allem in Südbayern oft als Synonym für Weizenbier verwendet. Traditionell können Weißbiere aber auch (obergärig) mit Gerste gebraute Biere sein.',
  published_at: 1.day.ago,
  published_amount: '15l in 5dl Flaschen'
).issue_voices!(10)

BrewBatch.create!(
  name: 'Brewtal Legend',
  description: 'Geheim. Selbst gebraut von Alerond McBong',
  published_at: 2.days.ago,
  published_amount: '15l in 5dl Flaschen'
).issue_voices!(10)

BrewBatch.create!(
  name: 'Schunkel Dunkel',
  description: 'Die dunkle Färbung des Bieres hängt weniger vom Malzgehalt und der Stammwürze, sondern insbesondere von der Farbstärke des verwendeten Malzes ab, die abhängig von der Herstellung zu einer hellgelben bis tiefschwarzen Färbung des fertigen Bieres führen kann. In Deutschland und Mitteleuropa wird die Farbstärke von Malz und Bier in der Einheit EBC gemessen.',
  published_at: 3.days.ago,
  published_amount: '15l in 5dl Flaschen'
).issue_voices!(10)

User.create!(email: 'bieri@example.com', voices: Voice.all.sample(5))
User.create!(email: 'birnbaum@example.com', voices: Voice.all.sample(3))
User.create!(email: 'birwinken@example.com')

puts 'seeded successfully.'
