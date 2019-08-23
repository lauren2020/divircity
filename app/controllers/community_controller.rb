class CommunityController < ApplicationController
  before_action :set_community, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def set_community
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_params
      params.fetch(:community, {})
    end
end
