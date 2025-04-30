class ListingsController < ApplicationController
  def index
    @listings = Listing.all.order(posted_at: :desc)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end
end
