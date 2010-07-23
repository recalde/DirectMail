class MailPiecesController < ApplicationController
  # GET /mail_pieces
  # GET /mail_pieces.xml
  def index
    if is_logged_in?

      @mail_client = MailClient.find(params[:mail_client_id])
      @mail_pieces = @mail_client.mail_pieces.all

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @mail_pieces }
      end
    else
      goto_login
    end
  end

  # GET /mail_pieces/1
  # GET /mail_pieces/1.xml
  def show
    if is_logged_in?
      @mail_piece = MailPiece.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @mail_piece }
      end
    else
      goto_login
    end
  end

  # GET /mail_pieces/new
  # GET /mail_pieces/new.xml
  def new
    if is_logged_in?
      @mail_client = MailClient.find(params[:mail_client_id])
      @mail_piece = @mail_client.mail_pieces.build

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @mail_piece }
      end
    else
      goto_login
    end
  end

  # GET /mail_pieces/1/edit
  def edit
    if is_logged_in?
      @mail_piece = MailPiece.find(params[:id])
    else
      goto_login
    end
  end

  # POST /mail_pieces
  # POST /mail_pieces.xml
  def create
    if is_logged_in?

      @mail_client = MailClient.find(params[:mail_client_id])
      @mail_piece = @mail_client.mail_pieces.build(params[:mail_piece])

      respond_to do |format|
        if @mail_piece.save
          flash[:notice] = 'MailPiece was successfully created.'
          format.html { redirect_to(@mail_piece) }
          format.xml  { render :xml => @mail_piece, :status => :created, :location => @mail_piece }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @mail_piece.errors, :status => :unprocessable_entity }
        end
      end
    else
      goto_login
    end
  end

  # PUT /mail_pieces/1
  # PUT /mail_pieces/1.xml
  def update
    if is_logged_in?
      @mail_piece = MailPiece.find(params[:id])

      respond_to do |format|
        if @mail_piece.update_attributes(params[:mail_piece])
          flash[:notice] = 'MailPiece was successfully updated.'
          format.html { redirect_to(@mail_piece) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @mail_piece.errors, :status => :unprocessable_entity }
        end
      end
    else
      goto_login
    end
  end

  # DELETE /mail_pieces/1
  # DELETE /mail_pieces/1.xml
  def destroy
    if is_logged_in?

      @mail_piece = MailPiece.find(params[:id])
      @mail_client = @mail_piece.mail_client
      @mail_piece.destroy

      respond_to do |format|

        format.html { redirect_to mail_client_mail_pieces_path(@mail_client) }
        format.xml  { head :ok }
    end
    else
      goto_login
    end
  end
end
