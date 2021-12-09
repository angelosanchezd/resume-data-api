class SkillsController < ApplicationController
  before_action :authenticate_student

  def index
    skills = Skill.where(student_id: current_student.id)
    render json: skills.as_json
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill.as_json
  end

  def create
    skill = Skill.new(student_id: current_student.id, skill: params[:skill])
    if skill.save
      render json: skill.as_json
    else 
      render json: {error: skill.errors.full_messages}
    end
  end

  def update
    skill = Skill.find_by(id: params[:id])
    skill.student_id = skill.student_id
    skill.skill = params[:skill] || skill.skill
    if skill.save
      render json: skill.as_json
    else 
      render json: {error: skill.errors.full_messages}
    end
  end

  def destroy
    skill = Skill.find_by(id: params[:id])
    if skill.delete
      render json: {message: "Skill Deleted"}
    else    
      render json: {error: skill.errors.full_messages}
    end
  end
end
