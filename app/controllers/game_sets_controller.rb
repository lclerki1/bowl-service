class GameSetsController < ApplicationController
  before_action :set_game_set, only: [:show, :edit, :update, :destroy]

  # GET /game_sets
  # GET /game_sets.json
  def index
    @game_sets = GameSet.all
    @people = Person.all
  end

  # GET /game_sets/1
  # GET /game_sets/1.json
  def show
  end

  # GET /game_sets/new
  def new
    @game_set = GameSet.new
    @people = Person.all
  end

  # GET /game_sets/1/edit
  def edit
    @people = Person.all
  end

  # POST /game_sets
  # POST /game_sets.json
  def create
    @game_set = GameSet.new(game_set_params)

    respond_to do |format|
      if @game_set.save
        format.html { redirect_to @game_set, notice: 'Game set was successfully created.' }
        format.json { render :show, status: :created, location: @game_set }
      else
        format.html { render :new }
        format.json { render json: @game_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_sets/1
  # PATCH/PUT /game_sets/1.json
  def update
    respond_to do |format|
      if @game_set.update(game_set_params)
        format.html { redirect_to @game_set, notice: 'Game set was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_set }
      else
        format.html { render :edit }
        format.json { render json: @game_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_sets/1
  # DELETE /game_sets/1.json
  def destroy
    @game_set.destroy
    respond_to do |format|
      format.html { redirect_to game_sets_url, notice: 'Game set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_set
      @game_set = GameSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_set_params
      #params.fetch(:game_set, {})
      params.require(:game_set).permit(:person_id, :date, :games => [])
    end
end
