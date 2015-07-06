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
    ideas = [ {title: "Fire Hats", body: "You put it on, then light it on fire.", quality_id: Quality.first.id},
              {title: "Dog Paddle", body: "A paddle my dog can use to canoe.", quality_id: Quality.second.id},
              {title: "IoB", body: "Lets you know when a bathroom is free", quality_id: Quality.third.id}
            ]
    ideas.each { |idea| Idea.create(idea) }  
    puts "Ideas have been loaded"
  end

  def self.go
    clear
    quality
    ideas
  end

end

Seed.go
