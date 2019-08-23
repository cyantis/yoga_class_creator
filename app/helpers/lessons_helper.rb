module LessonsHelper
  def lesson_type_arr
    Lesson.all.lesson_type_order.collect {|l| l.lesson_type}.uniq
  end

  def poses_name_arr(lesson)
    lesson.poses.collect do |p|
      if p.name.empty?
        next
      else
        p
      end
    end
  end

end
