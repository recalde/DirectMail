class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
    
    respond_to do |format|
       format.html { render :layout => 'minimal'}
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to mail_clients_path
    else
      render :action => 'new', :layout => 'minimal'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    if @peep_session
      reset_peep_session
    end

    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end

end
