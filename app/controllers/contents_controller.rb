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
<<<<<<< HEAD
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
=======
    if @content.save
      redirect_to contents_path(@user)
    else
      render :new
>>>>>>> 4eff38c7d4e7d3b1e3cce823af5eda2a4a03f2a1
    end
  end
end
