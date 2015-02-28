class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @assets = Assets.all
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
    @asset = Assets.find(:params[:id])
  end

  def create
    @asset = Asset.new(:params[:id])
    @asset.save
    respond_with(@asset)
  end

  def update
    @asset = Assets.find(params[:id])
    @asset.update(asset_params)
    respond_with(@asset)
  end

  def destroy
    @asset = Assets.find(params[:id])
    @asset.destroy
    respond_with(@asset)
  end

  private
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:course_id, :uploaded_file)
    end
end
