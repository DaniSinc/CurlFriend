class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
    @category = ["plaits", "bantu knots", "dreadlocks", "afro", "weaves", "extensions", "faux locks", "perms", "relaxed", "s-curl", "jerri-curl", "headscarves and headwraps"]
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
end
