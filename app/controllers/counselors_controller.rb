class CounselorsController < PeopleController
  def show
  	@counselor = Counselor.find(params[:id])
	end 

	def create
	@counselor = Counselor.new(params[:counselor])
  	age = Date.today.year - @counselor.birthday.year
    @counselor.age = age
      if @counselor.save
        flash[:success] = "Entry: counselor Succesfully Created"
        redirect_to @counselor	
      else
        render 'new'
     end 
  end
end