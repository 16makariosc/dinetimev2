class DiningHallsController < ApplicationController
  before_action :set_dining_hall, only: [:show, :edit, :update, :destroy]

  # GET /dining_halls
  # GET /dining_halls.json
  def index
    @dining_halls = DiningHall.all
  end

  # GET /dining_halls/1
  # GET /dining_halls/1.json
  def show
  end

  # GET /dining_halls/new
  def new
    @dining_hall = DiningHall.new
  end

  # GET /dining_halls/1/edit
  def edit
  end

  # POST /dining_halls
  # POST /dining_halls.json
  def create
    @dining_hall = DiningHall.new(dining_hall_params)

    respond_to do |format|
      if @dining_hall.save
        format.html { redirect_to @dining_hall, notice: 'Dining hall was successfully created.' }
        format.json { render :show, status: :created, location: @dining_hall }
      else
        format.html { render :new }
        format.json { render json: @dining_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dining_halls/1
  # PATCH/PUT /dining_halls/1.json
  def update
    respond_to do |format|
      if @dining_hall.update(dining_hall_params)
        format.html { redirect_to @dining_hall, notice: 'Dining hall was successfully updated.' }
        format.json { render :show, status: :ok, location: @dining_hall }
      else
        format.html { render :edit }
        format.json { render json: @dining_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dining_halls/1
  # DELETE /dining_halls/1.json
  def destroy
    @dining_hall.destroy
    respond_to do |format|
      format.html { redirect_to dining_halls_url, notice: 'Dining hall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_hall
      @dining_hall = DiningHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dining_hall_params
      params.require(:dining_hall).permit(:name)
    end
end
