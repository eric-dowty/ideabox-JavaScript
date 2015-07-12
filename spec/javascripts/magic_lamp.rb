module LoadData
  
  def qualities
    Quality.create([
      { description: 'genius' },
      { description: 'plausible' },
      { description: 'swill' }
    ])
  end

  def ideas
    Idea.create([
      { title: "first", body: "the first idea", quality_id: Quality.first.id },
      { title: "second", body: "the second idea", quality_id: Quality.second.id },
      { title: "third", body: "the third idea", quality_id: Quality.third.id }
    ])
  end

end

MagicLamp.define(controller: IdeaController, extend: LoadData) do

  fixture do #idea/home
    qualities
    ideas
    render template: 'idea/home'
  end

  fixture do #idea/show
    qualities
    ideas
    render template: 'idea/show'
  end

end