class LinksController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :new, :create ]

  def index
    # get the current user
    user = current_user

    # get all the links for the current user
    @links = user.links
  end

  def new
    @link = Link.new
  end

  def create
    # get the current user
    user = current_user

    # check if the link already exists
    @link = Link.find_by(source: link_params[:source])

    if @link.present?
      # if the link already exists, add the user to the link
      @link.users << user unless @link.users.include?(user)
    else
      # if the link does not exist, create a new link
      @link = Link.new(link_params)
      @link.users << user
      @link.save!
    end

    # render success
    redirect_to links_path
  end

  def redirect
    # allow anyone to access this action
    short_url = Link.find_by(short_url: params[:short_url])

    if short_url.present?
      redirect_to short_url.source, allow_other_host: true
    else
      # render 404
      render status: 404, json: { error: "Not found" }
    end
  end

  def show
    # get the current user
    user = current_user

    # get the link
    @link = user.links.find(params[:id])
  end

  def destroy
    # get the current user
    user = current_user

    # get the link
    @link = user.links.find(params[:id])

    # remove the user from the link
    @link.users.delete(user)

    # redirect to the links page
    redirect_to links_path
  end

  private
    def link_params
      params.require(:link).permit(:source)
    end
end
