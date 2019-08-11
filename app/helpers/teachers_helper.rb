module TeachersHelper
  def lesson_type_arr(teacher)
    teacher.lessons.collect {|l| l.lesson_type}
  end
end
