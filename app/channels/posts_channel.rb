class PostsChannel < ApplicationCable::Channel
  def subscribed
    post = Post.find(params[:id])
    puts "Subscribed to post #{post.id}"
    stream_for post
  end
end
