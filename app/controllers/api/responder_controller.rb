class Api::ResponderController < ApplicationController
  
  responde_to :json

  def create
    @responder = Responder.new(responder_params)
    respond_to do |format|
      if @responder.save
        format.json { render :show, status: :created, location: @responder }
      else
        format.json { render json: @responder.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private

    def responder_params
      params.require(:responder).permit(:type, :name, :capacity)
    end

end
