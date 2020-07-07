class JourneysController < ApplicationController
  before_action :set_journey, only: [:show, :edit, :update, :destroy]

  # GET /journeys
  # GET /journeys.json
  def index
    @journeys = Journey.all.order('start_journey DESC')
  end

  # GET /journeys/1
  # GET /journeys/1.json
  def show
  end

  # GET /journeys/new
  def new
    @user = current_user.id
    @journey = Journey.new
  end

  # GET /journeys/1/edit
  def edit
    @user = current_user.id
  end

  # POST /journeys
  # POST /journeys.json
  def create
    @journey = Journey.new(journey_params)

    respond_to do |format|
      if @journey.save
        format.html { redirect_to action: :index, notice: 'Journey was successfully created.' }
        format.json { render :show, status: :created, location: @journey }
      else
        format.html { render :new }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journeys/1
  # PATCH/PUT /journeys/1.json
  def update
    respond_to do |format|
      if @journey.update(journey_params)
        format.html { redirect_to action: :index, notice: 'Journey was successfully updated.' }
        format.json { render :show, status: :ok, location: @journey }
      else
        format.html { render :edit }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journeys/1
  # DELETE /journeys/1.json
  def destroy
    @journey.destroy
    respond_to do |format|
      format.html { redirect_to journeys_url, notice: 'Journey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey
      @journey = Journey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journey_params
      params.require(:journey).permit(:start_journey, :end_journey, :worked_hours, :lunch_start, :lunch_end, :lunch_time, :user_id)
    end
end
