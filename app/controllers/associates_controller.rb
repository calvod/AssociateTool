class AssociatesController < ApplicationController
	def index
		@associates = Associate.all
	end

	def show
		@associate = Associate.find(params[:id])
	end

	def new
		@associate = Associate.new
	end

	def edit
		@associate = Associate.find(params[:id])
	end

	def create
		@associate = Associate.new(associate_params)
		if @associate.save
			redirect_to @associate
		else
			render 'new'
		end
	end

	def update
	  @associate = Associate.find(params[:id])
	 
	  if @associate.update(associate_params)
	    redirect_to @associate
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @associate = Associate.find(params[:id])
	  @associate.destroy
	 
	  redirect_to associates_path
	end

	private
		def associate_params
			params.require(:associate).permit(:firstname, :lastname, :username, :email)
		end
end
