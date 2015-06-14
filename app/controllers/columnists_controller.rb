class ColumnistsController < ApplicationController
  before_action :set_columnist, only: [:show, :edit, :update, :destroy]

  # GET /columnists
  # GET /columnists.json
  def index
    @columnists = Columnist.all
  end

  # GET /columnists/1
  # GET /columnists/1.json
  def show
  end

  # GET /columnists/new
  def new
    @columnist = Columnist.new
  end

  # GET /columnists/1/edit
  def edit
  end

  # POST /columnists
  # POST /columnists.json
  def create
    @columnist = Columnist.new(columnist_params)

    respond_to do |format|
      if @columnist.save
        format.html { redirect_to @columnist, notice: 'Columnist was successfully created.' }
        format.json { render :show, status: :created, location: @columnist }
      else
        format.html { render :new }
        format.json { render json: @columnist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columnists/1
  # PATCH/PUT /columnists/1.json
  def update
    respond_to do |format|
      if @columnist.update(columnist_params)
        format.html { redirect_to @columnist, notice: 'Columnist was successfully updated.' }
        format.json { render :show, status: :ok, location: @columnist }
      else
        format.html { render :edit }
        format.json { render json: @columnist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columnists/1
  # DELETE /columnists/1.json
  def destroy
    @columnist.destroy
    respond_to do |format|
      format.html { redirect_to columnists_url, notice: 'Columnist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_columnist
      @columnist = Columnist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def columnist_params
      params.require(:columnist).permit(:name, :url, :category, :type, :rating)
    end
end
