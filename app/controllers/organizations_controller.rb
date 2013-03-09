class OrganizationsController < PeopleController

	def show
  	@org = Organization.find(params[:id])
	end 

	def create
	  @org = Organization.new(params[:organization])

      if @org.save
        flash[:success] = "Entry: Organization Succesfully Created"
        redirect_to @org	
      else
        render 'new'
     end 

    end
end