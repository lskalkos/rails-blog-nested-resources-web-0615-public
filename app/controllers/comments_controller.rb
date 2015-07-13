class CommentsController < ApplicationController
  def post
    @comment = Comment.create(comment_params)
    @post = Post.find(comment_params[:post_id].to_i)

    redirect_to @post
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
