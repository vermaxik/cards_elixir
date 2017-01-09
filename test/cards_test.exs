defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "deal method give only 3 cards on hand" do
    deck = Cards.create_deck
    {hand_cards, _rest_of_card} = Cards.deal(deck, 3)
    assert length(hand_cards) == 3
  end
end
