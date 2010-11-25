class ProbasController < ApplicationController
  # GET /probas
  # GET /probas.xml
  def index
    @probas = Proba.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @probas }
    end
  end

  # GET /probas/1
  # GET /probas/1.xml
  def show
    @proba = Proba.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @proba }
    end
  end

  # GET /probas/new
  # GET /probas/new.xml
  def new
    @proba = Proba.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @proba }
    end
  end

  # GET /probas/1/edit
  def edit
    @proba = Proba.find(params[:id])
  end

  # POST /probas
  # POST /probas.xml
  def create
    @proba = Proba.new(params[:proba])

    respond_to do |format|
      if @proba.save
        format.html { redirect_to(@proba, :notice => 'Proba was successfully created.') }
        format.xml  { render :xml => @proba, :status => :created, :location => @proba }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @proba.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /probas/1
  # PUT /probas/1.xml
  def update
    @proba = Proba.find(params[:id])

    respond_to do |format|
      if @proba.update_attributes(params[:proba])
        format.html { redirect_to(@proba, :notice => 'Proba was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @proba.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /probas/1
  # DELETE /probas/1.xml
  def destroy
    @proba = Proba.find(params[:id])
    @proba.destroy

    respond_to do |format|
      format.html { redirect_to(probas_url) }
      format.xml  { head :ok }
    end
  end
end
