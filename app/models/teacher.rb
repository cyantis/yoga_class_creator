class Teacher < ApplicationRecord
  has_many :lessons
  has_many :poses

  has_secure_password
end
