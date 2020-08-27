class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    # @comments = policy_scope(Comment)
    @comments = policy_scope(Comment.where(content: Content.find(params[:content_id])))
  end

  # def show
  #   @comment = Comment.find(params[:id])
  # end

  def new
    @content = Content.find(params[:content_id])
    @comment = Comment.new
    authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.content = Content.find(params[:content_id])
    @comment.user = current_user
    authorize @comment

    if @comment.save
      flash[:success] = "Thank you for commenting"
      redirect_to content_path(@comment.content)
    else
      render 'contents/show'
    end
  end

  def destroy
    @comment.destroy
    redirect_to content_path(@comment.content)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end

  def set_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end
end
