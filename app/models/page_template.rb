class PageTemplate < ActiveRecord::Base
	indexable_attribute :page_type, [:static, :form]
	
	scope :static, -> {where page_type: 0}
	scope :form, -> {where page_type: 1}

	def form_items
		FormItem.where(page_id: id)
	end

	def create_form_item(params)
		@item = FormItem.new(params)
		@item.data = params[:data].split(',') if params[:data]
		@item.page_id = id
		@item.save
	end

	def destroy_form_items
		FormItem.destroy_all(page_id: id)		
	end
end
