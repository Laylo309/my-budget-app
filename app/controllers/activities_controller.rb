class ActivitiesController < ApplicationController
  load_and_authorize_resource

  # GET /activities or /activities.json
  def index
    @activities = Activity.all
  end

  # GET /activities/1 or /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
    @current_user = current_user
  end

  # POST /activities or /activities.json
  def create
    @activity = current_user.activities.new(activity_params)

      if @activity.save
      @activity_category = ActivitiesCategory.create(activity_category_params.merge(activity_id: @activity.id))
      redirect_to category_path(@activity_category.category_id), notice: "Activity was successfully created."
      else
       render :new, status: :unprocessable_entity
      end
  end

  # DELETE /activities/1 or /activities/1.json
  def destroy
    @activity.destroy
     redirect_to activities_url, notice: "Activity was successfully destroyed."
  end

  private

    # Only allow a list of trusted parameters through.
    def activity_params
      params.require(:activity).permit(:author_id, :name, :amount)
    end

    def activity_category_params
      params.require(:activity).permit(:category_id)
    end
end
