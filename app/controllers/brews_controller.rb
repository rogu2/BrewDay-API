class BrewsController < ApplicationController
  before_action :set_brew, only: [:show, :update, :destroy]

  # GET /brews
  def index
    @brews = Brew.all

    render json: @brews
  end

  # GET /brews/1
  def show
    render json: @brew
  end

  # POST /brews
  def create
    @brew = Brew.new(brew_params)

    if @brew.save
      render json: @brew, status: :created, location: @brew
    else
      render json: @brew.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brews/1
  def update
    if @brew.update(brew_params)
      render json: @brew
    else
      render json: @brew.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brews/1
  def destroy
    @brew.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brew
      @brew = Brew.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brew_params
      params.fetch(:brew, {})
    end
end
