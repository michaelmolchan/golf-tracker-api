class RoundsController < ProtectedController
  before_action :set_round, only: [:show, :update, :destroy]

  # GET /rounds
  def index
    @rounds = current_user.rounds.all

    render json: @rounds
  end

  # GET /rounds/1
  def show
    render json: @round
  end

  # POST /rounds
  def create
    @round = current_user.rounds.build(round_params)

    if @round.save
      render json: @round, status: :created
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rounds/1
  def update
    if @round.update(round_params)
      render json: @round
    else
      render json: @round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rounds/1
  def destroy
    @round.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = current_user.rounds.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def round_params
      params.require(:round).permit(:date, :course, :location, :par, :score)
    end
end
