class ActionsController < ApplicationController
  load_and_authorize_resource

  # GET /actions or /actions.json
  def index
    redirect_to categories_path
  end

  # GET /actions/new
  def new
    @action = Action.new
  end

  # POST /actions or /actions.json
  def create
    @action = Action.new(action_params)
    @action.author = current_user

    respond_to do |format|
      if @action.save
        format.html { redirect_to @action.categories.first, notice: 'Action was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actions/1 or /actions/1.json
  def destroy
    @action.destroy
    respond_to do |format|
      format.html { redirect_to actions_url, notice: 'Action was successfully destroyed.' }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def action_params
    params.require(:action).permit(:name, :amount, :author_id)
  end
end
