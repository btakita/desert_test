class BlogsController < ApplicationController
  def index
    @blogs = Blog.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @blogs }
    end
  end

  def show
    @blog = Blog.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @blog }
    end
  end

  def new
    @blog = Blog.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @blog }
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        flash[:notice] = 'Blog was successfully created.'
        format.html { redirect_to(@blog) }
        format.xml  { render :xml => @blog, :status => :created, :location => @blog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        flash[:notice] = 'Blog was successfully updated.'
        format.html { redirect_to(@blog) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to(blogs_url) }
      format.xml  { head :ok }
    end
  end
end
