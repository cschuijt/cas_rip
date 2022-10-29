class LinksController < ApplicationController
  def index
    @links = Link.all
  end
  
  def show
    @link = Link.find_by(short: :short)
  end
  
  def follow
    @link = Link.find_by(short: :short)
    @link.increment!(:clicks)

    redirect_to @link.long
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
  end

  def destroy
    Link.find_by(short: :short).destroy
    redirect_to root_url
  end
end
