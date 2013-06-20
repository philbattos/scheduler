class ConferencesController < ApplicationController

  def index
    conferences = Conference.all

    render json: conferences
  end

  def show
    conference = Conference.where(slug: params[:slug]).first

    if conference
      render json: conference
    else
      render json: nil, status: :bad_request
    end
  end
end
