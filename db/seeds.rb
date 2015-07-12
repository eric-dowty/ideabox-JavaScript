class Seed 

  def self.clear
    Idea.destroy_all
    Quality.destroy_all
  end

  def self.quality
    ratings = ["genius", "plausible", "swill"]
    ratings.each { |rating| Quality.create(description: rating) }
    puts "Quality data has been loaded"
  end

  def self.ideas
    quality_id = Quality.third.id
    15.times { |idea| Idea.create(title: fake_title, body: fake_body, quality_id: quality_id) }  
    puts "Ideas have been loaded"
  end

  def self.go
    clear
    quality
    ideas
  end

  def self.fake_title
    Faker::Lorem.word
  end 

  def self.fake_body
    Faker::Lorem.words(30).join(' ')
  end 

end

Seed.go
