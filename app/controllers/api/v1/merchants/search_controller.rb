class Api::V1::Merchants::SearchController < ApplicationController
  def show
    render json: Merchant.find(params[:id]) if params[:id]
    render json: Merchant.find_by_name(params[:name]) if params[:name]
    render json: Merchant.find_by_created_at(params[:created_at]) if params[:created_at]
    render json: Merchant.find_by_updated_at(params[:updated_at]) if params[:updated_at]
  end
end