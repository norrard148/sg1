class CommentsController < ApplicationController
  def create
    @comment=Comment.new(comment_params)
    @comment.post_id=params[:post_id]
    @comment.save

    redirect_to '/'
  end

  def destroy
    @comment=Comment.find(params[:id])
    @comment.destory
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
