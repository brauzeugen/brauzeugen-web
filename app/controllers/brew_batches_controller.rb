class BrewBatchesController < ApplicationController
  # GET /brew_batches
  def index
    @brew_batches = BrewBatch.published.order(serial_number: :desc)
  end
end
