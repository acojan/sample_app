class StudentsController < PeopleController

  def new
    @person = Student.new
    #@person.programs.build
    #@person.subject_infos.build
    @person.build_growth_group

    @type = 'Student'
    render 'people/new'
  end

def show
    @student = Student.find(params[:id])
  end 

def printshow
    @student = Student.find(params[:id])
    render 'printview', layout: false 
  end

def edit
    @person = Person.find(params[:id])
    @type = @person.type
    render 'people/edit'
end

  def create
    @student = Student.new(params[:student])
    @student.setAge
      if @student.save
        flash[:success] = "Entry creation succesful."	
        redirect_to @student
      else
        flash[:error] = "Name field is missing." 
        @person = Student.new
        @type='Student'
        render 'people/new'
     end 
  end

  def show
  	@student = Student.find(params[:id])
  end 

end