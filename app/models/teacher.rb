class Teacher < ApplicationRecord
  has_many :lessons
  has_many :poses, through: :lessons
  
  has_secure_password
end
