class Api::V1::CommunitiesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_community, only: [:show, :update, :destroy]

  # GET /communities
  def index
    @communities = Community.all

    render json: @communities
  end

  # GET /communities/1
  def show
    render json: @community
  end

  # POST /communities
  def create
    @community = Community.new(community_params)

    if @community.save
      render json: @community, status: :created, location: api_v1_community_url(@community)
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communities/1
  def update
    if @community.update(community_params)
      render json: @community
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  # DELETE /communities/1
  def destroy
    @community.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community
      @community = Community.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def community_params
        params.permit(:profile_image, :name, :description, :privacy_type, :viewed_by, {tags: []}, {features: []}, {admins: []}, :members, :location, :beacon, :creator, :ambassadors, :current_events, :past_events, :feed, :category, :address, :allow_member_post_to_feed, :allow_member_post_to_events)
    end
end
