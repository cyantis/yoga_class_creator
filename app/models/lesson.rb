class Lesson < ApplicationRecord
  has_and_belongs_to_many :poses
  has_many :notes
  belongs_to :teacher
  #accepts_nested_attributes_for :poses

  def poses_attributes=(pose_attributes)
    self.poses = pose_attributes.values.collect {|pose_attribute| Pose.find_or_create_by(name: pose_attribute["name"].downcase, teacher_id: pose_attribute["teacher_id"])}
  end

end
