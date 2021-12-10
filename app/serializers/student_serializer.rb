class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :short_bio, :linkedin, :twitter, :website, :online_resume, :github, :photo
  
  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :capstones
end
