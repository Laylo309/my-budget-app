class JoinTableCategoryActivitiesController < ApplicationController
  before_action :set_join_table_category_activity, only: %i[show edit update destroy]

  # GET /join_table_category_activities or /join_table_category_activities.json
  def index
    @join_table_category_activities = JoinTableCategoryActivity.all
  end

  # GET /join_table_category_activities/1 or /join_table_category_activities/1.json
  def show; end

  # GET /join_table_category_activities/new
  def new
    @join_table_category_activity = JoinTableCategoryActivity.new
  end

  # GET /join_table_category_activities/1/edit
  def edit; end

  # POST /join_table_category_activities or /join_table_category_activities.json
  def create
    @join_table_category_activity = JoinTableCategoryActivity.new(join_table_category_activity_params)

    respond_to do |format|
      if @join_table_category_activity.save
        format.html do
          redirect_to join_table_category_activity_url(@join_table_category_activity),
                      notice: 'Join table category activity was successfully created.'
        end
        format.json { render :show, status: :created, location: @join_table_category_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join_table_category_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_category_activities/1 or /join_table_category_activities/1.json
  def update
    respond_to do |format|
      if @join_table_category_activity.update(join_table_category_activity_params)
        format.html do
          redirect_to join_table_category_activity_url(@join_table_category_activity),
                      notice: 'Join table category activity was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @join_table_category_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_category_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_category_activities/1 or /join_table_category_activities/1.json
  def destroy
    @join_table_category_activity.destroy

    respond_to do |format|
      format.html do
        redirect_to join_table_category_activities_url,
                    notice: 'Join table category activity was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_join_table_category_activity
    @join_table_category_activity = JoinTableCategoryActivity.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def join_table_category_activity_params
    params.fetch(:join_table_category_activity, {})
  end
end
