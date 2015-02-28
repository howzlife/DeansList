class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @assets = Asset.all
    respond_with(@assets)
  end

  def show
    respond_with(@asset)
  end

  def new
    @asset = Asset.new
    respond_with(@asset)
  end

  def edit
  end

  def create
    @asset = Asset.new(asset_params)
    @asset.save
    respond_with(@asset)
  end

  def update
    @asset.update(asset_params)
    respond_with(@asset)
  end

  def destroy
    @asset.destroy
    respond_with(@asset)
  end

  private
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:type, :posted, :description, :tags, :rating)
    end
end
