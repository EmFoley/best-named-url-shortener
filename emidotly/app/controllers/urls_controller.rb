require 'faker'

class UrlsController < ApplicationController

  def index
  end

  def new
    @url = Url.create(long_url: params[:url],
                      short_url: Faker::Lorem.characters(char_count=6))
  end

end