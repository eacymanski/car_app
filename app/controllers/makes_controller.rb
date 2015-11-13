class MakesController < ApplicationController
  before_action :set_make, only: [:show, :edit, :update, :destroy]

  # GET /models
  # GET /models.json
  def index
    @makes = Make.all
  end

  # GET /models/1
  # GET /models/1.json
  def show
  end

  # GET /models/new
  def new
    @make = Make.new
  end

  # GET /models/1/edit
  def edit
  end

  # POST /models
  # POST /models.json
  def create
    @make = Make.new(make_params)

    respond_to do |format|
      if @make.save
        format.html { redirect_to @make, notice: 'Make was successfully created.' }
        format.json { render :show, status: :created, location: @make }
      else
        format.html { render :new }
        format.json { render json: @make.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /models/1
  # PATCH/PUT /models/1.json
  def update
    respond_to do |format|
      if @make.update(make_params)
        format.html { redirect_to @make, notice: 'Make was successfully updated.' }
        format.json { render :show, status: :ok, location: @make }
      else
        format.html { render :edit }
        format.json { render json: @make.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @make.destroy
    respond_to do |format|
      format.html { redirect_to makes_url, notice: 'Make was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_make
      @make = Make.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def make_params
      params.require(:make).permit(:name)
    end
end
