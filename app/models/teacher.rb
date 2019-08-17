class Teacher < ApplicationRecord
  has_many :lessons
  has_many :notes, through: :lessons

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password

end
