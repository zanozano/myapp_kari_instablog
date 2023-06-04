class CommentsController < ApplicationController
  def create
    @instablog = Instablog.find(params[:instablog_id])
    @comment = @instablog.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to instablog_path(@instablog), notice: "Comment created successfully."
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
