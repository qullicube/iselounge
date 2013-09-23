class ProfessorsCoursesController < ApplicationController
  before_action :set_professors_course, only: [:show, :edit, :update, :destroy]

  # GET /professors_courses
  # GET /professors_courses.json
  def index
    @professors_courses = ProfessorsCourse.all
  end

  # GET /professors_courses/1
  # GET /professors_courses/1.json
  def show
  end

  # GET /professors_courses/new
  def new
    @professors_course = ProfessorsCourse.new
  end

  # GET /professors_courses/1/edit
  def edit
  end

  # POST /professors_courses
  # POST /professors_courses.json
  def create
    @professors_course = ProfessorsCourse.new(professors_course_params)

    respond_to do |format|
      if @professors_course.save
        format.html { redirect_to @professors_course, notice: 'Professors course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @professors_course }
      else
        format.html { render action: 'new' }
        format.json { render json: @professors_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professors_courses/1
  # PATCH/PUT /professors_courses/1.json
  def update
    respond_to do |format|
      if @professors_course.update(professors_course_params)
        format.html { redirect_to @professors_course, notice: 'Professors course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @professors_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors_courses/1
  # DELETE /professors_courses/1.json
  def destroy
    @professors_course.destroy
    respond_to do |format|
      format.html { redirect_to professors_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professors_course
      @professors_course = ProfessorsCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professors_course_params
      params[:professors_course]
    end
end
