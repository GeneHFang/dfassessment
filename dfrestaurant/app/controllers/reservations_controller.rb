class ReservationsController < ApplicationController

    before_action :findReservation, only:[:show, :edit, :update]

    def create
        @reserveration = Reservation.new(reservationParams)
        
        if @reserveration.save
            redirect_to @reservation
        else
            flash[:error] = @reservation.errors.full_messages
        end
    end

    def show
        render :show
    end

    private
    def reservationParams
        params.require(:reservation).permit(:table_id, :number_of_guests, :start, :end)
    end

    def findReservation
        @reservation = Reservation.find(params[:id])
    end
            
    #     t.integer "table_id"
    # t.integer "number_of_guests"
    # t.datetime "start"
    # t.datetime "end"

end
