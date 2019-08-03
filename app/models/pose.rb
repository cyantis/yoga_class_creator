class Pose < ApplicationRecord
  belongs_to :lesson
  belongs_to :teacher, through: :lesson
end
