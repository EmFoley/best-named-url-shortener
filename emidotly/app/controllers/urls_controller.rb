require 'faker'

class UrlsController < ApplicationController

  def index
   @url = Url.new
  end

  def create
    @url = Url.create(long_url: params[:url][:long_url], short_url: Faker::Lorem.characters(char_count=6)) 
      
    respond_to do |format|
      if @url.save
        format.js { render :show }
      else
        render @url.errors.messages
      end
    end
  end

  def show
    @url = Url.find(params[:id]) 
  end

end