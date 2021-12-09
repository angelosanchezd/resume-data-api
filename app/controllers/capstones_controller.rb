class CapstonesController < ApplicationController
  before_action :authenticate_user

  def index
    capstones = Capstone.where(student_id: params[:student_id])
    render json: capstones
  end
  def show
    capstone = Capstone.find_by(id: params[:id])
    render json: capstone
  end
  def create 
    capstone = Capstone.new(
      student_id: params[:student_id],
      name: params[:name],
      description: params[:description],
      URL: params[:URL],
      screenshot: params[:screenshot]
    )
    if capstone.save
      render json: { message: "Capstone created successfully" }, status: :created
    else
      render json: { errors: capstone.errors.full_messages }, status: :bad_request
    end
  end
  def update
    capstone = Capstone.find_by(id: params[:id])
    capstone.student_id = params[:student_id] || capstone.student_id
    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.URL = params[:URL] || capstone.URL
    capstone.screenshot = params[:screenshot] || capstone.screenshot
    if capstone.save
      render json: capstone
    else
      render json: { errors: capstone.errors.full_messages }, status: :bad_request
    end
  end
  def destroy
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
    render json: { message: "Capstone Deleted"}
  end
end
