class CommentsController < ApplicationController
  def create
    @comment=Comment.new(comment_params)
    @comment.post_id=params[:post_id]
    @comment.user_id = current_user.id
    @comment.save

    redirect_to "/posts/#{params[:post_id]}"
  end

  def destroy
    
    @comment=Comment.find(params[:id])
    if @comment.user_id == current_user.id then 
    @comment.destroy
    redirect_to "/posts/#{params[:post_id]}"
    else redirect_to "/posts/#{params[:post_id]}" 
    end
  end
  def comment_params
    params.require(:comment).permit(:content)
  end
end
