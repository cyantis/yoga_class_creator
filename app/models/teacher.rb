class Teacher < ApplicationRecord
  has_many :lessons
  has_many :poses
  has_many :notes, through: :lessons

  has_secure_password

end
