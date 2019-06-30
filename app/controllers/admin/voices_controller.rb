module Admin
  class VoicesController < AdminController
    def index
      @voices = Voice.all
    end

    def per_brew_batch
      @brew_batch = BrewBatch.find(brew_batch_id)
      @voices = @brew_batch.voices

      respond_to do |format|
        format.xlsx
      end
    end

    private

    def brew_batch_id
      params[:brew_batch_id].to_i
    end
  end
end
