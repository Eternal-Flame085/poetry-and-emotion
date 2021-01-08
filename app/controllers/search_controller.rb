class SearchController < ApplicationController
  def index
    @poems = SearchFacade.get_poems_by_author(params[:author])
  end
end
