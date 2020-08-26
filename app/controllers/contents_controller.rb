class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = policy_scope(Content)
  end

  def show
  end

  def new
    @content = Content.new
    @category = ["plaits", "bantu knots", "dreadlocks", "afro", "weaves", "extensions", "faux locks", "perms", "relaxed", "s-curl", "jerri-curl", "headscarves and headwraps"]
    authorize @content
  end

  def create
    @content = Content.new(content_params)
    @content.user = current_user
    authorize @content
    if @content.save
      redirect_to contents_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @content.update(content_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @content.destroy
    redirect_to contents_path(current_user)
  end

  private

  def content_params
    params.require(:content).permit(:title, :category, :description, :photo)
  end

  def set_content
    @content = Content.find(params[:id])
    authorize @content
  end
end
