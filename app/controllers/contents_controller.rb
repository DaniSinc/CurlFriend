class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
    @categories = ["plaits", "bantu knots", "dreadlocks", "afro", "weaves", "extensions", "faux locks", "perms", "relaxed", "s-curl", "jerri-curl", "headscarves and headwraps"]
  end

  def create
    @content = Content.new(content_params)
    @content.user = current_user
      if @content.save
        redirect_to contents_path(@user)
      else
        render :new
      end
  end
 
  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])

    if @content.update(content_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

 private
 
  def contents_params
    params.require(:content).permit(:title, :category, :description, :photo)
  end
end
