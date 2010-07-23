class UsersController < ApplicationController
  def new
    @user = User.new
    respond_to do |format|
       format.html { render :layout => 'minimal'}
    end
  end

  def create

    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = 'Registration successful.'
        format.html { redirect_to(mail_clients_url) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @user = current_user
    render :layout => "moderator_admin"
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      render :layout => "moderator_admin", :action => 'edit'
    else
      flash[:notice] = ""
      render :layout => "moderator_admin", :action => 'edit'
    end
  end

end
