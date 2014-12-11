class KanrisController < ApplicationController
  before_action :set_kanri, only: [:show, :edit, :update, :destroy]

  # GET /kanris
  # GET /kanris.json
  def index
    @composers = Composer.all
  end

  # GET /kanris/1
  # GET /kanris/1.json
  def show
    @composer = Composer.find(params[:id])
  end

  # GET /kanris/new
  def new
    @kanri = Kanri.new
  end

  # GET /kanris/1/edit
  def edit
    @composer = Composer.find(params[:id])
  end

  # POST /kanris
  # POST /kanris.json
  def create
    @composer = Composer.new()

    respond_to do |format|
      if @kanri.save
        format.html { redirect_to @kanri, notice: 'Kanri was successfully created.' }
        format.json { render :show, status: :created, location: @kanri }
      else
        format.html { render :new }
        format.json { render json: @kanri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kanris/1
  # PATCH/PUT /kanris/1.json
  def update
    respond_to do |format|
      if @kanri.update(kanri_params)
        format.html { redirect_to @kanri, notice: 'Kanri was successfully updated.' }
        format.json { render :show, status: :ok, location: @kanri }
      else
        format.html { render :edit }
        format.json { render json: @kanri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kanris/1
  # DELETE /kanris/1.json
  def destroy
    @kanri.destroy
    respond_to do |format|
      format.html { redirect_to kanris_url, notice: 'Kanri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanri
      @kanri = Kanri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kanri_params
      params[:kanri]
    end
end
