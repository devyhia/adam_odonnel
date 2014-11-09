module RestAPI
	extend ActiveSupport::Concern

	module ClassMethods
		def rest_api(klass, *params)
			klass = klass.to_s
			pklass = klass.downcase
			class_eval %Q{
				def index
					sleep 1.seconds
					render json: #{klass}.all.json
				end

				def update 
					klass = #{klass}.update(params[:id], #{pklass}_params)
					render json: klass.json
				end

				def show
					sleep 1.seconds
					klass = #{klass}.find(params[:id])
					render json: klass.json
				end 

				def create
					klass = #{klass}.create(#{pklass}_params)
					render json: klass.json
				end

				def destroy
					klass = #{klass}.find(params[:id])
					klass.destroy
					render json: { 
						id: klass.id,
						deleted: true
					}
				end

				private
				# Strong Parameters (Rails 4)
				def #{pklass}_params
					params.require(:#{pklass}).permit(#{params})
				end
			}
		end
	end
end