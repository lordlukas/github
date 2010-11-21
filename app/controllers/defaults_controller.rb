class DefaultsController < ApplicationController
  # GET /defaults
  # GET /defaults.xml
  def index
    @defaults = Default.all
    if @defaults.blank?
      some
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @defaults }
    end
  end

  # GET /defaults/1
  # GET /defaults/1.xml
  def show
    @default = Default.find(params[:id])
    if show
      "do show ne ? "
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @default }
    end
  end

  # GET /defaults/new
  # GET /defaults/new.xml
  def new
    @default = Default.new
    if new
      "some hovno blb"
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @default }
    end
  end

  # GET /defaults/1/edit
  def edit
    @default = Default.find(params[:id])
    case @default
    when "lol"
      puts "hovno"
    end
  end

  # POST /defaults
  # POST /defaults.xml
  def create
    @default = Default.new(params[:default])
;#siomae m
äggsdafsh
hnanh
ag
a
a
    respond_to do |format|
      if @default.save
        flash[:notice] = 'Default was successfully created.'
        format.html { redirect_to(@default) }
        format.xml  { render :xml => @default, :status => :created, :location => @default }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @default.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /defaults/1
  # PUT /defaults/1.xml
  def update
    @default = Default.find(params[:id])

    respond_to do |format|
      if @default.update_attributes(params[:default])
        flash[:notice] = 'Default was successfully updated.'
        format.html { redirect_to(@default) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @default.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /defaults/1
  # DELETE /defaults/1.xml
  def destroy
    @default = Default.find(params[:id])
    @default.destroy

    respond_to do |format|
      format.html { redirect_to(defaults_url) }
      format.xml  { head :ok }
    end
  end

  def to_delete
    default = params[:to_delete].map {|i,k| ( Default.find(i) if k != "0" )}
    default.delete(nil)
    default.each { |i| i.destroy}
    redirect_to :action => :index
  end
end
