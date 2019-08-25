module SessionsHelper
  def top_teacher
    teacher_pair = Lesson.top_teacher_arr
    teacher = Teacher.find_by_id(teacher_pair[0])
    "Did you know that #{teacher.username.capitalize} is our top teacher with #{teacher_pair[1]} lessons?"
  end
end
