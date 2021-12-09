class ExperiencesController < ApplicationController
  before_action :authenticate_student

  def index
    render json: Experience.where(student_id: params[:student_id]).as_json
  end

  def show
    render json: Experience.find_by(params[:id]).as_json
  end

  def create
    a = Experience.create(start_date: params[:start_date], end_date: params[:end_date], job_title: params[:job_title], company: params[:company_name], details: params[:details])
    if a.save
      render json: a.as_json
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def delete
    a = Experience.find_by(id: params[:id])
    a.destroy
    if a.destroy
      render json: {message: 'Done'}
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def update
    #post.image = params[:image] || post.image
    x = Experience.find_by(id: params[:id])
    x.start_date = params[:start_date]
    x.end_date = params[:end_date]
    x.job_title = params[:job_title]
    x.company = params[:company_name]
    x.details = params[:details]
    if x.save
      render json: x.as_json
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

end
