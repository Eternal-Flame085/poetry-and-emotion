class PoetryService
  def self.get_poems_by_author(author)
    response = conn.get("https://poetrydb.org/author,poemcount/#{author};10")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://poetrydb.org")
  end
end
