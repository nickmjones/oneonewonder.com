class ColleaguesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_colleague, only: [:show, :edit, :update, :destroy]

  # GET /colleagues
  # GET /colleagues.json
  def index
    @colleagues = Colleague.all
  end

  # GET /colleagues/1
  # GET /colleagues/1.json
  def show
  end

  # GET /colleagues/new
  def new
    @colleague = Colleague.new
    @team = Team.find(current_user.id)
    @members = @team.colleagues.all
    @event = Event.where(:colleague_id => params[:id])
  end

  # GET /colleagues/1/edit
  def edit
  end

  # POST /colleagues
  # POST /colleagues.json
  def create
    @colleague = Colleague.new(colleague_params)

    respond_to do |format|
      if @colleague.save
        format.html { redirect_to "/", notice: 'Colleague was successfully created.' }
        format.json { render :index, status: :created, location: @colleague }
      else
        format.html { render :new }
        format.json { render json: @colleague.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colleagues/1
  # PATCH/PUT /colleagues/1.json
  def update
    respond_to do |format|
      if @colleague.update(colleague_params)
        format.html { redirect_to @colleague, notice: 'Colleague was successfully updated.' }
        format.json { render :show, status: :ok, location: @colleague }
      else
        format.html { render :edit }
        format.json { render json: @colleague.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colleagues/1
  # DELETE /colleagues/1.json
  def destroy
    @colleague.destroy
    respond_to do |format|
      format.html { redirect_to colleagues_url, notice: 'Colleague was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colleague
      @colleague = Colleague.find(params[:id])
      @team = Team.find(current_user.id)
      @members = @team.colleagues.all
      @event = Event.where(:colleague_id => params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colleague_params
      params.require(:colleague).permit(:fname, :lname, :title, :birthday, :team_id, :color)
    end
end
