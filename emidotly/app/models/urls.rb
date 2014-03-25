class Urls < ActiveRecord::Base
  validates_presence_of :short_url
  validates_presence_of :long_url

  def shorten_url(params)

  end

end