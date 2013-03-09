class CounseleesController < PeopleController
  
  def show
  	@counselee = Counselee.find(params[:id])
	end 

	def create
	@counselee = Counselee.new(params[:counselee])
  @counselee.build_others
      if @counselee.save and @others.save
        flash[:success] = "Entry: counselee Succesfully Created, please continue with forms"
        redirect_to @counselee 
      else
        render 'new'
     end 
  end

end