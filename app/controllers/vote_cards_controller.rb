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
        format.html { redirect_to @vote_card, notice: 'VoteCard was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /vote_cards/1
  def update
    respond_to do |format|
      if @vote_card.update(vote_card_params)
        format.html { redirect_to @vote_card, notice: 'VoteCard was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /vote_cards/1
  # DELETE /vote_cards/1.json
  def destroy
    @vote_card.destroy
    respond_to do |format|
      format.html { redirect_to vote_cards_url }
    end
  end

  private
    def set_vote_card
      @vote_card = VoteCard.find(params[:id])
    end

    def vote_card_params
      params.require(:vote_card).permit(:name, :best_in_show_id, :most_delicious_id, :most_decorative_id, :most_traditional_id)
    end
    def load_entries
      @entries = Entry.all
    end
end
