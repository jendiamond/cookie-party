require 'test_helper'

class VoteCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote_card = vote_cards(:one)
  end

  test "should get index" do
    get vote_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_vote_card_url
    assert_response :success
  end

  test "should create vote_card" do
    assert_difference('VoteCard.count') do
      post vote_cards_url, params: { vote_card: { best_in_show: @vote_card.best_in_show, most_decorative: @vote_card.most_decorative, most_delicious: @vote_card.most_delicious, most_traditional: @vote_card.most_traditional, name: @vote_card.name } }
    end

    assert_redirected_to vote_card_url(VoteCard.last)
  end

  test "should show vote_card" do
    get vote_card_url(@vote_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_vote_card_url(@vote_card)
    assert_response :success
  end

  test "should update vote_card" do
    patch vote_card_url(@vote_card), params: { vote_card: { best_in_show: @vote_card.best_in_show, most_decorative: @vote_card.most_decorative, most_delicious: @vote_card.most_delicious, most_traditional: @vote_card.most_traditional, name: @vote_card.name } }
    assert_redirected_to vote_card_url(@vote_card)
  end

  test "should destroy vote_card" do
    assert_difference('VoteCard.count', -1) do
      delete vote_card_url(@vote_card)
    end

    assert_redirected_to vote_cards_url
  end
end
