class ConferencesController < ApplicationController

  # GET /conferences
  # GET /conferences.json
  def index
    @conferences = Conference.all

    render json: @conferences
  end

  # # GET /conferences/1
  # GET /conferences/1.json
  def show
    @conference = Conference.where(slug: params[:slug]).first

    render json: @conference
  end


end
