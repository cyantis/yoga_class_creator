require 'securerandom'

class OmniauthController < ApplicationController
  def create
    @teacher = Teacher.find_or_create_by(uid: auth['uid']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      u.password = SecureRandom.urlsafe_base64 unless u.password != nil
    end

    session[:user_id] = @teacher.id
    flash[:message] = "Logged in via Google!"
    redirect_to teacher_lessons_path(@teacher)
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
