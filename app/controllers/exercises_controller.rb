class ExercisesController < ApplicationController

  # GET: /exercises
  get "/exercises" do
    redirect_if_not_logged_in
    erb :"/exercises/index.html"
  end

  # GET: /exercises/new
  get "/workouts/:workout_id/exercises/new" do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:workout_id])
    erb :"/exercises/new.html"
  end

  # POST: /exercises
  post "/exercises" do
    redirect_if_not_logged_in
    exercise = Exercise.create(name: params[:name], reps: params[:reps], sets: params[:sets], minutes: params[:minutes], workout_id: params[:workout_id])


    redirect "/exercises/#{exercise.id}"
  end

  # GET: /exercises/5
  get "/exercises/:id" do
    redirect_if_not_logged_in
    @exercise = current_user.exercises.find(params[:id])
    erb :"/exercises/show.html"
  end

  # GET: /exercises/5/edit
  get "/exercises/:id/edit" do
    redirect_if_not_logged_in
    @exercise = current_user.exercises.find(params[:id])
    erb :"/exercises/edit.html"
  end

  # PATCH: /exercises/5
  patch "/exercises/:id" do
    redirect_if_not_logged_in
    exercise = current_user.exercises.find(params[:id])
    exercise.update(name: params[:name], reps: params[:reps], sets: params[:sets], minutes: params[:minutes], workout_id: params[:workout_id])
    redirect "/exercises/#{exercise.id}"
  end

  # DELETE: /exercises/5/delete
  delete "/exercises/:id" do
    redirect_if_not_logged_in
    @exercise = current_user.exercises.find(params[:id])
    @exercise.destroy
    redirect "/workouts/#{@exercise.workout.id}"
  end
end
