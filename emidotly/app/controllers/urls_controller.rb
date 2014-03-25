require 'faker'

class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(long_url: params[:url],short_url: Faker::Lorem.characters(char_count=6)) 
    if @url.save
      redirect_to url_path
    else
      render 'new'
    end
  end

  def show
    @url = Url.find(params[:id])
    
  end

end