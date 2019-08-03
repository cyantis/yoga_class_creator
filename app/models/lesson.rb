class Lesson < ApplicationRecord
  has_many :poses
  belongs_to :teacher
  
end
