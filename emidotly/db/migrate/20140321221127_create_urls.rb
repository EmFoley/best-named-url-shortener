class CreateUrls < ActiveRecord::Migration
  def create_table :urls do |t|
    t.string :short_url
    t.string :long_url
  end
end
