require './lib/scryfall/bulk_data.rb'

class HomeController < ApplicationController
  def index
    @sets = SetRelease.where(set_type: "expansion")

    render inertia: 'Home/Index', props: {
      sets: @sets
    }
  end
end
