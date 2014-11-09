namespace :ember do
	namespace :model do
		desc "TODO"
		task clone: :environment do
			$model_name = ENV["model"]
			class_eval %Q{
				$attributes = ""
				cnt = 0
				#{ENV['model'].gsub(/(\\t|\\n)/, '')}.columns_hash.each do |k, col|
					$attributes += (cnt >0 ? ",\n" : "\n") + "\t" + col.name.to_s.camelize + ": DS.attr('"+ col.type.to_s + "')"
					cnt += 1
				end
			}
			$attributes += "\n"
			model_skeleton = %Q{#{ENV['app'] || "App"}.FormResponse = DS.Model.extend({#{$attributes}});}

			puts model_skeleton

			File.open("./app/assets/javascripts/models/#{$model_name.underscore}.js", "w+") do |f|
			  f.write(model_skeleton)
			end

			# schema_hash = {}
			# Rails.application.eager_load! # populate descendants
			# ApplicationSerializer.descendants.sort_by(&:name).each do |serializer_class|
			# 	schema = serializer_class.schema
			# 	schema_hash[serializer_class.model_class.name] = schema
			# end
		end
	end
end
