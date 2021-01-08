require 'rails_helper'

describe PoetryService do
  it "Returns a response Json format and only 10 poems are retuned" do
    poems = PoetryService.get_poems_by_author("Emily")

    expect(poems.class).to eq(Array)
    expect(poems.first.class).to eq(Hash)
    expect(poems.first.key?(:title)).to eq(true)
    expect(poems.first.key?(:author)).to eq(true)
    expect(poems.first.key?(:lines)).to eq(true)
  end
end
