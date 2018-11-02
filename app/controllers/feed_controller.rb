class FeedController < ApplicationController
  def show
    @users=User.all
    @posts=[]
    @users.each do |user|
      tpost=user.posts.all
      @posts = @posts + tpost
    end

    
  end
end