require 'rails_helper'

describe IbmService do
  it "Returns a response Json format and only 10 poems are retuned" do
    poems = PoetryService.get_poems_by_author("Emily")
    poem_poro = Poem.new(poems.first)
    tones = IbmService.get_poem_tone(poem_poro.poem)
    
    expect(tones.class).to eq(Hash)
    expect(tones[:document_tone].class).to eq(Hash)
    expect(tones[:document_tone][:tones].class).to eq(Array)
  end
end
