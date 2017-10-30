class LoboursController < ApplicationController
  before_action :set_lobour, only: [:show, :edit, :update, :destroy]

  # GET /lobours
  # GET /lobours.json
  def index
    @lobours = Lobour.all
  end

  # GET /lobours/1
  # GET /lobours/1.json
  def show
  end

  # GET /lobours/new
  def new
    @lobour = Lobour.new
  end

  # GET /lobours/1/edit
  def edit
  end

  # POST /lobours
  # POST /lobours.json
  def create
    @lobour = Lobour.new(lobour_params)

    respond_to do |format|
      if @lobour.save
        format.html { redirect_to @lobour, notice: 'Lobour was successfully created.' }
        format.json { render :show, status: :created, location: @lobour }
      else
        format.html { render :new }
        format.json { render json: @lobour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lobours/1
  # PATCH/PUT /lobours/1.json
  def update
    respond_to do |format|
      if @lobour.update(lobour_params)
        format.html { redirect_to @lobour, notice: 'Lobour was successfully updated.' }
        format.json { render :show, status: :ok, location: @lobour }
      else
        format.html { render :edit }
        format.json { render json: @lobour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lobours/1
  # DELETE /lobours/1.json
  def destroy
    @lobour.destroy
    respond_to do |format|
      format.html { redirect_to lobours_url, notice: 'Lobour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lobour
      @lobour = Lobour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lobour_params
      params.require(:lobour).permit(:name, :age, :emp_no)
    end
end
