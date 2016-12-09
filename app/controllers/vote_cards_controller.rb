class VoteCardsController < ApplicationController
  before_action :set_vote_card, only: [:show, :edit, :update, :destroy]
  before_action :load_entries, only: [:new, :edit]

  # GET /vote_cards
  def index
    @vote_cards = VoteCard.all
  end

  # GET /vote_cards/1
  def show
  end

  # GET /vote_cards/new
  def new
    @vote_card = VoteCard.new
  end

  # GET /vote_cards/1/edit
  def edit
  end

  # POST /vote_cards
  def create
    @vote_card = VoteCard.new(vote_card_params)

    respond_to do |format|
      if @vote_card.save
        format.html { redirect_to @vote_card, notice: 'Vote card was successfully created.' }
        format.json { render :show, status: :created, location: @vote_card }
      else
        format.html { render :new }
        format.json { render json: @vote_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vote_cards/1
  def update
    respond_to do |format|
      if @vote_card.update(vote_card_params)
        format.html { redirect_to @vote_card, notice: 'Vote card was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote_card }
      else
        format.html { render :edit }
        format.json { render json: @vote_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vote_cards/1
  def destroy
    @vote_card.destroy
    respond_to do |format|
      format.html { redirect_to vote_cards_url, notice: 'Vote card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_card
      @vote_card = VoteCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_card_params
      params.require(:vote_card).permit(:name, :best_in_show, :most_decorative, :most_delicious, :most_traditional)
    end

    def load_entries
      @entries = Entry.all
    end
end
