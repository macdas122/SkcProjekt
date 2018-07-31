class MainsController < ApplicationController
    def index
      @mains = Main.all
    end
    
    def show
        if params[:keywords].present?
            @keywords = params[:keywords]
            main_search_term = MainSearchTerm.new(@keywords)
            @mains = Main.where(
                main_search_term.where_clause,
                main_search_term.where_args).
                order(main_search_term.order)
        else
            @mains = []
        end
    end
end
