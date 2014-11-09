class Admin::RealtorsController < ApplicationController
  layout "admin"
  before_action :set_admin_realtor, only: [:show, :edit, :update, :destroy]

  # GET /admin/realtors
  # GET /admin/realtors.json
  def index
    @admin_realtors = Realtor.all
  end

  # GET /admin/realtors/1
  # GET /admin/realtors/1.json
  def show
  end

  # GET /admin/realtors/new
  def new
    @admin_realtor = Realtor.new
  end

  # GET /admin/realtors/1/edit
  def edit
  end

  # POST /admin/realtors
  # POST /admin/realtors.json
  def create
    @admin_realtor = Realtor.new(admin_realtor_params)

    respond_to do |format|
      if @admin_realtor.save
        format.html { redirect_to @admin_realtor, notice: 'Realtor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_realtor }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/realtors/1
  # PATCH/PUT /admin/realtors/1.json
  def update
    respond_to do |format|
      if @admin_realtor.update(admin_realtor_params)
        format.html { redirect_to @admin_realtor, notice: 'Realtor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/realtors/1
  # DELETE /admin/realtors/1.json
  def destroy
    @admin_realtor.destroy
    respond_to do |format|
      format.html { redirect_to admin_realtors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_realtor
      @admin_realtor = Realtor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_realtor_params
      params.require(:admin_realtor).permit(:image, :title, :more, :url)
    end
end
