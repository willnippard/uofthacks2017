class UserController < ApplicationController
  before_filter :authenticate_user!

  def index
    #user profile
    @today_record = Record.where(:user_id => current_user.id)
    
    @user = current_user.name
    @steps = @today_record.pluck(:steps).first
    @sleep = @today_record.pluck(:sleep).first
    @meditated = @today_record.pluck(:meditation).first
    @enjoyment = @today_record.pluck(:enjoyment).first
    @achievement = @today_record.pluck(:achievement).first
  end
end