class Poem
  attr_reader :title, :author, :poem, :tones
  def initialize(poem)
    @title = poem[:title]
    @author = poem[:author]
    @poem = poem_line(poem[:lines])
    @tones = IbmService.get_poem_tone(@poem)[:document_tone][:tones]
  end

  def poem_line(lines)
    poem = ""
    first_line = false
    lines.each do |line|
      if first_line == false
        poem += line
        first_line = true
      else
        poem += ",#{line}"
      end
    end
    poem
  end
end
