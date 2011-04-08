class Admin::MoviesController < ApplicationController
  # GET /admin/movies
  # GET /admin/movies.xml
  def index
    @admin_movies = Admin::Movie.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_movies }
    end
  end

  # GET /admin/movies/1
  # GET /admin/movies/1.xml
  def show
    @admin_movie = Admin::Movie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_movie }
    end
  end

  # GET /admin/movies/new
  # GET /admin/movies/new.xml
  def new
    @admin_movie = Admin::Movie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_movie }
    end
  end

  # GET /admin/movies/1/edit
  def edit
    @admin_movie = Admin::Movie.find(params[:id])
  end

  # POST /admin/movies
  # POST /admin/movies.xml
  def create
    @admin_movie = Admin::Movie.new(params[:admin_movie])

    respond_to do |format|
      if @admin_movie.save
        format.html { redirect_to(@admin_movie, :notice => 'Movie was successfully created.') }
        format.xml  { render :xml => @admin_movie, :status => :created, :location => @admin_movie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/movies/1
  # PUT /admin/movies/1.xml
  def update
    @admin_movie = Admin::Movie.find(params[:id])

    respond_to do |format|
      if @admin_movie.update_attributes(params[:admin_movie])
        format.html { redirect_to(@admin_movie, :notice => 'Movie was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/movies/1
  # DELETE /admin/movies/1.xml
  def destroy
    @admin_movie = Admin::Movie.find(params[:id])
    @admin_movie.destroy

    respond_to do |format|
      format.html { redirect_to(admin_movies_url) }
      format.xml  { head :ok }
    end
  end
end
