class JsonImporter
  def self.call(file_path)
    file = File.read(file_path)
    listings = JSON.parse(file)

    listings.each do |kitty|
      Listing.create!(
        kitty_name: kitty["kitty_name"],
        age: kitty["age"],
        gender: kitty["gender"],
        breed: kitty["breed"],
        personality: kitty["personality"],
        housing_type: kitty["housing_type"],
        location: kitty["location"],
        description: kitty["description"],
        preferences: kitty["preferences"],
        posted_at: kitty["posted_at"]
      )
    end
  end
end