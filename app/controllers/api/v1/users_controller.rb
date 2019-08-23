module Api
    module V1
class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: api_v1_user_url(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:id, :profile_image, :cover_photo, :first_name, :last_name, :username, :email, :phone, :address_line1, :address_line2, :city, :state, :zip, :about_me, :notifications, :communities, :communities_invited, :events_going, :events_interested, :events_not_going, :ambassadors, :ambassadors_pending, :ambassador_to, :ambassador_communities, :ambassador_communities_disabled, :ambassador_requests, :privacy_type, :tags, :viewed_by, :user_visits, :community_visits, :connections, :removed_connections, :profile_update_dates)
    end
end
end
    end
