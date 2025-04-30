puts "Seeding meow listings ..."
JsonImporter.call(Rails.root.join("lib/assets/data/meowstay_listings.json"))
puts "Done!"