#
# Starting Point for React app
#
class HomeController < ApplicationController
  def index
    @blogposts = Blogpost.all
  end
end
