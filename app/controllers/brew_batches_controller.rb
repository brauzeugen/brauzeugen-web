class BrewBatchesController < ApplicationController
  # GET /brew_batches
  def index
    @brew_batches = BrewBatch.published.order(published_at: :desc)
  end
end
