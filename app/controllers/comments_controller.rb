class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      render template: "posts/show"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
