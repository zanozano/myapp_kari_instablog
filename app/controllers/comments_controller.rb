class CommentsController < ApplicationController
  def create
    @instablog = Instablog.find(params[:instablog_id])
    @comment = @instablog.comments.build(comment_params)

    if current_user
      @comment.user_id = current_user.id
    end

    if @comment.save
      flash[:notice] = "Comentario creado satisfactoriamente"
    else
      flash[:alert] = "Hubo un error al crear el comentario"
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
