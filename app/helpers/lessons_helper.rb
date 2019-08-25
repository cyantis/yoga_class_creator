module LessonsHelper
  def lesson_type_arr
    Lesson.all.lesson_type_order.collect {|l| l.lesson_type}.uniq
  end

end
