#encoding: utf-8

class PostsController < ApplicationController
  def index
    @posts = Post.all()
    @newpost = Post.new()
    
    respond_to do |format|
      format.js
      format.html
    end
  end
  
  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  def authenticate
    uid = params[:username]
    pwd = params[:password]
    @matches = User.where(:username => uid)
    respond_to do |format|
      format.html { redirect_to post_new_path }
      if !@matches.empty?
        if @matches.first.password == pwd
          format.js { render :text => "Succes!" }
        else
          format.js { render :text => "Password passede ikke!" }
        end
      else
        format.js { render :text => "Bruger ikke fundet!" }
      end
    end
  end
end