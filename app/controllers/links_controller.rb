class LinksController < ApplicationController
  def index
    @links = Link.all
    render
  end

  def new
    @link = Link.new
    render
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      render :new
    end
  end

  def show
    short_url = Link.find_by(short_url: params[:short_url])

    if short_url.present?
      redirect_to short_url.source
    else
      # render 404
    end
  end

  private

  def link_params
    params.require(:link).permit(:source)
  end
end
