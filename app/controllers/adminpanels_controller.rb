class AdminpanelsController < ApplicationController
  before_action :set_adminpanel, only: [:show, :edit, :update, :destroy]

  # GET /adminpanels
  # GET /adminpanels.json
  def index
    @adminpanels = Adminpanel.all
  end

  # GET /adminpanels/1
  # GET /adminpanels/1.json
  def show
  end

  # GET /adminpanels/new
  def new
    @adminpanel = Adminpanel.new
  end

  # GET /adminpanels/1/edit
  def edit
  end

  # POST /adminpanels
  # POST /adminpanels.json
  def create
    @adminpanel = Adminpanel.new(adminpanel_params)

    respond_to do |format|
      if @adminpanel.save
        format.html { redirect_to @adminpanel, notice: 'Adminpanel was successfully created.' }
        format.json { render :show, status: :created, location: @adminpanel }
      else
        format.html { render :new }
        format.json { render json: @adminpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminpanels/1
  # PATCH/PUT /adminpanels/1.json
  def update
    respond_to do |format|
      if @adminpanel.update(adminpanel_params)
        format.html { redirect_to @adminpanel, notice: 'Adminpanel was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminpanel }
      else
        format.html { render :edit }
        format.json { render json: @adminpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminpanels/1
  # DELETE /adminpanels/1.json
  def destroy
    @adminpanel.destroy
    respond_to do |format|
      format.html { redirect_to adminpanels_url, notice: 'Adminpanel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminpanel
      @adminpanel = Adminpanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminpanel_params
      params[:adminpanel]
    end
end
