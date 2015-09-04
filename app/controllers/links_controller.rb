class LinksController < ApplicationController


  def index
  end

  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
    @link = Link.new
  end

  def create
    # render :text => params.inspect
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @Link }
      else
        format.html { render :new }
        format.json { render json: @Link.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def link_params
      params.require(:link).permit(:title, :url)
    end


end
