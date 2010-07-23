class MailClientsController < ApplicationController
  # GET /mail_clients
  # GET /mail_clients.xml
  def index
    @mail_clients = MailClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mail_clients }
    end
  end

  # GET /mail_clients/1
  # GET /mail_clients/1.xml
  def show
    @mail_client = MailClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mail_client }
    end
  end

  # GET /mail_clients/new
  # GET /mail_clients/new.xml
  def new
    @mail_client = MailClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mail_client }
    end
  end

  # GET /mail_clients/1/edit
  def edit
    @mail_client = MailClient.find(params[:id])
  end

  # POST /mail_clients
  # POST /mail_clients.xml
  def create
    @mail_client = MailClient.new(params[:mail_client])

    respond_to do |format|
      if @mail_client.save
        flash[:notice] = 'MailClient was successfully created.'
        format.html { redirect_to(@mail_client) }
        format.xml  { render :xml => @mail_client, :status => :created, :location => @mail_client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mail_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mail_clients/1
  # PUT /mail_clients/1.xml
  def update
    @mail_client = MailClient.find(params[:id])

    respond_to do |format|
      if @mail_client.update_attributes(params[:mail_client])
        flash[:notice] = 'MailClient was successfully updated.'
        format.html { redirect_to(@mail_client) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mail_client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_clients/1
  # DELETE /mail_clients/1.xml
  def destroy
    @mail_client = MailClient.find(params[:id])
    @mail_client.destroy

    respond_to do |format|
      format.html { redirect_to(mail_clients_url) }
      format.xml  { head :ok }
    end
  end
end
