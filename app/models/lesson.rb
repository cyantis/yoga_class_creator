class Lesson < ApplicationRecord
  has_and_belongs_to_many :poses
  belongs_to :teacher

end
