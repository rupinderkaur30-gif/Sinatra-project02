class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"users/show.html"
  end

  post "/users" do
  user = User.create(username: params[:username], password: params[:password])
  session[:user_id] = user.id
  redirect to "/users/#{user.id}"
  end

  end
