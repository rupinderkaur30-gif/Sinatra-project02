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
  user = User.new(username: params[:username], password: params[:password])
  if user.save
    session[:user_id] = user.id
    redirect to "/users/#{user.id}"
  else
    flash[:warning] = user.errors.full_messages.to_sentence
    redirect to "/users/new"
  end
end

  end
