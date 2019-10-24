class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    render component: 'Blogs', props: { users: @blogs }
  end
end
