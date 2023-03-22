class SetReleasesController < ApplicationController
  def index
    @sets = SetRelease.where(set_type: "expansion")

    render inertia: 'Set/Index', props: {
      sets: @sets
    }
  end

  def show()
    @set = SetRelease.find_by!(code: params[:id])
    render inertia: 'Set/Show', props: {
      set: @set
    }
  end
end
