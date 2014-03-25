class Url < ActiveRecord::Base
  attr_accessible :short_url, :long_url
  validates_presence_of :short_url
  validates_presence_of :long_url

end