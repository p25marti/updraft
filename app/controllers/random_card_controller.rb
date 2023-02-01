require './lib/scryfall/bulk_data.rb'

class RandomCardController < ApplicationController
  def index
    @random = Scryfall::Card.random.to_h
  end
end
