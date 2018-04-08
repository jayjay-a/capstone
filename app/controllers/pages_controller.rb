class PagesController < ApplicationController

    def admin_panel
        authorize! :admin, :panel
        
    end
end
