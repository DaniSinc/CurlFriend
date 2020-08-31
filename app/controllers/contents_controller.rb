class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy, :favorite, :unfavorite]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @contents = policy_scope(Content)
    if params[:query].present?
      sql_query = "title ILIKE :query
                  OR category ILIKE :query
                  OR style ILIKE :query
                  OR description ILIKE :query"
      @contents = @contents.where(sql_query, query:"%#{params[:query]}%")
    end
    if params[:category].present?
      @contents = @contents.where(category: params[:category])
      @filter = params[:category]
    end
    if params[:style].present?
      @contents = @contents.where(style: params[:style])
      @filter = params[:style]
    end
  end

  def show
    @comment = Comment.new
  end

  def new
    @content = Content.new
    authorize @content
  end

  def create
    @content = Content.new(content_params)
    @content.user = current_user
    authorize @content
    if @content.video_url.present?
      key = @content.video_url.split("/").last
      @content.video_url = "https://www.youtube.com/embed/#{key}"
    end
    if @content.save
      redirect_to content_path(@content)
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
    redirect_to dashboard_path
  end

  def favorite
    current_user.favorite(@content)
#     redirect_to contents_path(anchor: "content-#{@content.id}")
    respond_to do |format|
       format.html { redirect_to contents_path } 
      format.js
    end
  end

  def unfavorite
    current_user.unfavorite(@content)
#     redirect_to contents_path(anchor: "content-#{@content.id}")
    respond_to do |format|
      format.html { redirect_to contents_path } 
      format.js
  end
end
  private

  def content_params
    params.require(:content).permit(:title, :category, :description, :photo, :content_type, :blog_image, :video_url, :style, :text)
  end

  def set_content
    @content = Content.find(params[:id])
    authorize @content
  end
end
