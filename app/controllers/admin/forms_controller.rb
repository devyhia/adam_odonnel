class Admin::FormsController < ApplicationController
  layout "admin"
  before_action :set_admin_form, only: [:show, :edit, :update, :destroy]

  # GET /admin/forms
  # GET /admin/forms.json
  def index
    @admin_forms = PageTemplate.form.all
  end

  # GET /admin/forms/1
  # GET /admin/forms/1.json
  def show
  end

  # GET /admin/forms/new
  def new
    @admin_form = PageTemplate.new
    @url = admin_forms_path
  end

  # GET /admin/forms/1/edit
  def edit
    @url = admin_form_path(@admin_form)
  end

  # POST /admin/forms
  # POST /admin/forms.json
  def create
    @admin_form = PageTemplate.new(admin_form_params)
    @admin_form.page_type = :form
    @admin_form.save

    params[:field].each do |k,v|
      form_item_params = params[:field][k].permit(:name, :data, :placeholder, :tag)
      @admin_form.create_form_item(form_item_params)
    end

    redirect_to admin_forms_path, notice: 'Form was successfully created.'
    # respond_to do |format|
    #   if 
    #     format.html {  }
    #     format.json { render action: 'show', status: :created, location: @admin_form }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @admin_form.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /admin/forms/1
  # PATCH/PUT /admin/forms/1.json
  def update
    @admin_form.page_type = :form
    
    @admin_form.destroy_form_items
    
    params[:field].each do |k,v|
      form_item_params = params[:field][k].permit(:name, :data, :placeholder, :tag)
      @admin_form.create_form_item(form_item_params)
    end

    respond_to do |format|
      if @admin_form.update(admin_form_params)
        format.html { redirect_to admin_form_path(@admin_form), notice: 'Form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/forms/1
  # DELETE /admin/forms/1.json
  def destroy
    @admin_form.destroy_form_items
    @admin_form.destroy
    respond_to do |format|
      format.html { redirect_to admin_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_form
      @admin_form = PageTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_form_params
      params.require(:page_template).permit(:title, :content, :link)
    end
end
