class People::StudentsController < ApplicationController
  before_action :set_people_student, only: [:show, :edit, :update, :destroy]

  # GET /people/students
  # GET /people/students.json
  def index
    @people_students = People::Student.all
  end

  # GET /people/students/1
  # GET /people/students/1.json
  def show
  end

  # GET /people/students/new
  def new
    @people_student = People::Student.new
  end

  # GET /people/students/1/edit
  def edit
  end

  # POST /people/students
  # POST /people/students.json
  def create
    @people_student = People::Student.new(people_student_params)

    respond_to do |format|
      if @people_student.save
        format.html { redirect_to @people_student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @people_student }
      else
        format.html { render :new }
        format.json { render json: @people_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/students/1
  # PATCH/PUT /people/students/1.json
  def update
    respond_to do |format|
      if @people_student.update(people_student_params)
        format.html { redirect_to @people_student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_student }
      else
        format.html { render :edit }
        format.json { render json: @people_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/students/1
  # DELETE /people/students/1.json
  def destroy
    @people_student.destroy
    respond_to do |format|
      format.html { redirect_to people_students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_student
      @people_student = People::Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_student_params
      params.require(:people_student).permit(:name, :grade, :attendence)
    end
end
