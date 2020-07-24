class TablesController < ApplicationController


    
    def index
    end
    

    
    def new
    end

    def create
        tableNo = Integer(table_params[:table_no])
        guestNo = Integer(table_params[:guest_no])
        @table = Table.new("capacity"=>guestNo, "tableID"=>tableNo)

        @table.save
        redirect_to @table
    end

    private
    def table_params
        params.require(:table).permit(:table_no, :guest_no)
    end

end
