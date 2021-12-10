class StudentsController < ApplicationController
  before_action :authenticate_student, except: [:create, :index, :show] 
  

  def index
    student = Student.all
    render json: student
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin: params[:linkedin],
      twitter: params[:twitter],
      website: params[:website],
      online_resume: params[:online_resume],
      github: params[:github],
      photo: params[:photo],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if student.save
      render json: student
    else
      render json: {errors: student.errors.full_messages}, status: 422
    end
  end

  def update
    student = Student.find_by(id: params[:id])
    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.phone_number = params[:phone_number] || student.phone_number
    student.short_bio = params[:short_bio] || student.short_bio
    student.linkedin = params[:linkedin] || student.linkedin
    student.twitter = params[:twitter] || student.twitter
    student.website = params[:website] || student.website
    student.online_resume = params[:online_resume] || student.online_resume
    student.github = params[:github] || student.github
    student.photo = params[:photo] || student.photo
    

    if student.save
      render json: student
    else
      render json: {errors: student.errors.full_messages}, status: 422
    end
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def destroy
    student = Student.find_by(id: params[:id])
    if student.delete
      render json: {message: "Student data deleted."}
    else
      render json: {errors: student.errors.full_messages}, status: 422
    end
  end
end
