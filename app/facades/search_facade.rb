class SearchFacade
  def self.get_poems_by_author(author)
    poem_info = PoetryService.get_poems_by_author(author)

    poems = poem_info.map do |poem|
      Poem.new(poem)
    end
  end
end
