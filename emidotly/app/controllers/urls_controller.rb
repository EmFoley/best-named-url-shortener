require 'faker'

class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.create(long_url: params[:url],short_url: Faker::Lorem.characters(char_count=6)) 
      if @url.save
        redirect_to url_path(@url)
      else
        render @url.errors.text
      end
  end

  def show
    @url = Url.find(params[:id]) 
  end

end