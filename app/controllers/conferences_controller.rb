class ConferencesController < ApplicationController

  # GET /conferences
  # GET /conferences.json
  def index
    conferences = Conference.all

    render json: conferences
  end

  # # GET /conferences/1
  # GET /conferences/1.json
  def show
    conference = Conference.where(slug: params[:slug]).first

    if conference
      render json: conference
    else
      render json: nil, status: :bad_request
    end
  end


end
