class ConferencesController < ApplicationController
  # GET /conferences
  # GET /conferences.json
  def index
    @conferences = Conference.all

    render json: @conferences
  end

  # GET /conferences/1
  # GET /conferences/1.json
  def show
    @conference = Conference.find(params[:id])

    render json: @conference
  end

  # POST /conferences
  # POST /conferences.json
  def create
    @conference = Conference.new(params[:conference])

    if @conference.save
      render json: @conference, status: :created, location: @conference
    else
      render json: @conference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conferences/1
  # PATCH/PUT /conferences/1.json
  def update
    @conference = Conference.find(params[:id])

    if @conference.update_attributes(params[:conference])
      head :no_content
    else
      render json: @conference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conferences/1
  # DELETE /conferences/1.json
  def destroy
    @conference = Conference.find(params[:id])
    @conference.destroy

    head :no_content
  end
end
