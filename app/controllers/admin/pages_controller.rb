class Admin::PagesController < ApplicationController
  layout "admin"
  before_action :set_admin_page, only: [:show, :edit, :update, :destroy]

  # GET /admin/pages
  # GET /admin/pages.json
  def index
    @admin_pages = PageTemplate.static.all
  end

  # GET /admin/pages/1
  # GET /admin/pages/1.json
  def show
  end

  # GET /admin/pages/new
  def new
    @admin_page = PageTemplate.new
    @url = admin_pages_path
  end

  # GET /admin/pages/1/edit
  def edit
    @url = admin_page_path(@admin_page)
  end

  # POST /admin/pages
  # POST /admin/pages.json
  def create
    @admin_page = PageTemplate.new(admin_page_params)
    @admin_page.page_type = :static

    respond_to do |format|
      if @admin_page.save
        format.html { redirect_to admin_page_path(@admin_page), notice: 'Page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/pages/1
  # PATCH/PUT /admin/pages/1.json
  def update
    @admin_page.page_type = :static
    respond_to do |format|
      if @admin_page.update(admin_page_params)
        format.html { redirect_to admin_page_path(@admin_page), notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/pages/1
  # DELETE /admin/pages/1.json
  def destroy
    @admin_page.destroy
    respond_to do |format|
      format.html { redirect_to admin_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_page
      @admin_page = PageTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_page_params
      params.require(:page_template).permit(:title, :content, :link)
    end
end
