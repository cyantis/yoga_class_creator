class Lesson < ApplicationRecord
  has_and_belongs_to_many :poses
  has_many :notes
  belongs_to :teacher

end
