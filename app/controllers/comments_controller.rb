class CommentsController < ApplicationController
  http_basic_authenticate_with name:
  "bonesmith", password: "123", only: :destroy

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comment_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @comment = @task.comments.find(params[:id])
    @comment.destroy
    redirect_to task_path(@task)
  end

  private
    def comment_params
      params.require(:comment).permit(:commentname, :comment)
    end

end
