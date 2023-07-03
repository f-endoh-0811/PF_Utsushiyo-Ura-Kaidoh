class Public::PostCommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_id = post.id
    comment.save
    redirect_to post_path(post)
    flash[:notice] = "コメントを投稿しました。"
  end
  
  def destroy
    PostComment.find(params[:id]).destroy
    redirect_to post_path(params[:post_id])
    flash[:notice] = "コメントを削除しました。"
  end
  
  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
