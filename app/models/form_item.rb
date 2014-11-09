class FormItem < ActiveRecord::Base
	indexable_attribute :tag, [:textfield, :select]

	def data
		JSON.parse(self['data'])
	end

	def data=(v)
		self['data'] = v.to_json
	end

	def js_hash
		{
			name: name,
			placeholder: placeholder, 
			data: self['data'] ? data : []
		}.to_json
	end
end