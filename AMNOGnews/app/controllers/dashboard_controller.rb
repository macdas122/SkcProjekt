class DashboardController < ApplicationController
    def index
      @mains = Main.all
      Main.order(:start_procedure)
    end
end
