class StudentsController < PeopleController

  def new
    @person = Student.new
    #@person.programs.build
    #@person.subject_infos.build
    @person.build_growth_group

    @type = 'Student'
    render 'people/new'
  end
  def create
    @student = Student.new(params[:student])
    @student.setAge
      if @user.save
        flash[:success] = "Entry creation succesful."	
        redirect_to @student
      else
        render 'new'
     end 
  end

  def show
  	@student = Student.find(params[:id])
  end 

end