class SiteController < ApplicationController
  def index
    puts 'Server says, Welcome to MovieBank! root_url: ' + root_url
  end
end
