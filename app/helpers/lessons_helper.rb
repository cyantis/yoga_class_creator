module LessonsHelper
  def lesson_type_arr
    Lesson.all.collect {|l| l.lesson_type}.uniq
  end
  
end
