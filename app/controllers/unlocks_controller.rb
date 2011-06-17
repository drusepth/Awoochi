class UnlocksController < ApplicationController
  # GET /unlocks
  # GET /unlocks.xml
  def index
    @unlocks = Unlock.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unlocks }
    end
  end

  # GET /unlocks/1
  # GET /unlocks/1.xml
  def show
    @unlock = Unlock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unlock }
    end
  end

  # GET /unlocks/new
  # GET /unlocks/new.xml
  def new
    @unlock = Unlock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unlock }
    end
  end

  # GET /unlocks/1/edit
  def edit
    @unlock = Unlock.find(params[:id])
  end

  # POST /unlocks
  # POST /unlocks.xml
  def create
    @unlock = Unlock.new(params[:unlock])

    respond_to do |format|
      if @unlock.save
        format.html { redirect_to(@unlock, :notice => 'Unlock was successfully created.') }
        format.xml  { render :xml => @unlock, :status => :created, :location => @unlock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unlock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unlocks/1
  # PUT /unlocks/1.xml
  def update
    @unlock = Unlock.find(params[:id])

    respond_to do |format|
      if @unlock.update_attributes(params[:unlock])
        format.html { redirect_to(@unlock, :notice => 'Unlock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unlock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unlocks/1
  # DELETE /unlocks/1.xml
  def destroy
    @unlock = Unlock.find(params[:id])
    @unlock.destroy

    respond_to do |format|
      format.html { redirect_to(unlocks_url) }
      format.xml  { head :ok }
    end
  end
end
