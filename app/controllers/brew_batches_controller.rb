class BrewBatchesController < ApplicationController
  # GET /brew_batches
  def index
    @brew_batches = BrewBatch.all
  end
end
