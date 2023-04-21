class PlatformsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @platforms = Platform.all.order("id asc")
    render json: { platforms: @platforms }, status: :ok
  end
    
  def edit
    @platform = Platform.find(params[:id])
  end
    
  def create
    @platform = Platform.create!(platform_params)
    render json: @platform, status: :ok
  rescue => ex
    render json: { error_type: 'wrong_params', error_message: ex }, status: 422
  end

  def update
    @platform = Platform.find(platform_params[:id])
    @platform.update!(platform_params)
    render json: @platform
  rescue => ex
    render json: { error_type: 'wrong_params', error_message: ex }, status: 422
  end
    
  def show
    @platform = Platform.find(platform_params[:id])
    render json: @platform
  rescue => ex
    render json: { error_type: 'platform_not_found', error_message: ex }, status: 422
  end

  def destroy
    @platform = Platform.find(platform_params[:id])
    @platform.destroy!
    render json: {}, status: :ok
  rescue => ex
    render json: { error_type: 'platform_not_found', error_message: ex }, status: 422
  end

  private

  def platform_params
    params.permit(:name,
      :description, :id)
    .to_h
    .symbolize_keys
  end
end
