class T0sController < ApplicationController
  # GET /t0s
  # GET /t0s.xml
  def index
    @t0s = T0.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @t0s }
    end
  end

  # GET /t0s/1
  # GET /t0s/1.xml
  def show
    @t0 = T0.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @t0 }
    end
  end

  # GET /t0s/new
  # GET /t0s/new.xml
  def new
    @t0 = T0.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @t0 }
    end
  end

  # GET /t0s/1/edit
  def edit
    @t0 = T0.find(params[:id])
  end

  # POST /t0s
  # POST /t0s.xml
  def create
    @t0 = T0.new(params[:t0])

    respond_to do |format|
      if @t0.save
        format.html { redirect_to(@t0, :notice => 'T0 was successfully created.') }
        format.xml  { render :xml => @t0, :status => :created, :location => @t0 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @t0.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /t0s/1
  # PUT /t0s/1.xml
  def update
    @t0 = T0.find(params[:id])

    respond_to do |format|
      if @t0.update_attributes(params[:t0])
        format.html { redirect_to(@t0, :notice => 'T0 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @t0.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /t0s/1
  # DELETE /t0s/1.xml
  def destroy
    @t0 = T0.find(params[:id])
    @t0.destroy

    respond_to do |format|
      format.html { redirect_to(t0s_url) }
      format.xml  { head :ok }
    end
  end
end
