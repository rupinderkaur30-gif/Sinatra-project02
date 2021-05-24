class WorkoutsController < ApplicationController

  # GET: /workouts
  get "/workouts" do
    redirect_if_not_logged_in
    @workouts = current_user.workouts
    erb :"/workouts/index.html"
  end

  # GET: /workouts/new
  get "/workouts/new" do
    redirect_if_not_logged_in
    erb :"/workouts/new.html"
  end

  # POST: /workouts
  post "/workouts" do
    redirect_if_not_logged_in
    workout = Workout.create(name: params[:name], user: current_user)
    redirect "/workouts/#{workout.id}"
  end

  # GET: /workouts/5
  get "/workouts/:id" do
    redirect_if_not_logged_in
    @workout = current_user.workouts.find(params[:id])
    erb :"/workouts/show.html"
  end

  # GET: /workouts/5/edit
  get "/workouts/:id/edit" do
    redirect_if_not_logged_in
    @workout = current_user.workouts.find(params[:id])
    erb :"/workouts/edit.html"
  end

  # PATCH: /workouts/5
  patch "/workouts/:id" do
    redirect_if_not_logged_in
    workout = current_user.workouts.find(params[:id])
    workout.update(name: params[:name], user: current_user)
    redirect "/workouts/#{workout.id}"
  end

  # DELETE: /workouts/5/delete
  delete "/workouts/:id" do
    redirect_if_not_logged_in
    workout = current_users.workouts.find(params[:id])
    if workout.user == current_user
     workout.destroy 
    end
    redirect "/workouts"
  end
end
