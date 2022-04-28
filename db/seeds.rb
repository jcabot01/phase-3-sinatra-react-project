puts "🌱 Seeding categories..."

c1 = Category.create(category_name: "Savings")
c2 = Category.create(category_name: "Checking")
c3 = Category.create(category_name: "Investing")

puts "🌱 Seeding events..."

Event.create(event_name: "Payday", event_cost: 1000, category_id: c2.id)
Event.create(event_name: "Chipotle", event_cost: 15, category_id: c2.id)
Event.create(event_name: "BUY APPL", event_cost: 165, category_id: c3.id)
Event.create(event_name: "Savings dump", event_cost: 450, category_id: c1.id)


puts "✅ Done seeding!"
