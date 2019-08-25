class Lesson < ApplicationRecord
  has_and_belongs_to_many :poses
  has_many :notes
  belongs_to :teacher

  validates :lesson_type, :title, presence: true

  scope :lesson_type_order, -> { order(:lesson_type) }
  scope :most_lessons, -> { select(:teacher_id).group(:teacher_id).count }

  def poses_attributes=(pose_attributes)
    clean_arr = pose_attributes.values.collect {|pose_attribute| pose_attribute if pose_attribute["name"] != ""}.compact

    self.poses = clean_arr.collect {|pose| Pose.find_or_create_by(name: pose["name"].downcase)}
  end

  def self.top_teacher_arr
    teacher = self.most_lessons.max_by{ |k,v| v}
  end

end
