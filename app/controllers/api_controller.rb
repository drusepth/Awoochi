class ApiController < ApplicationController
  def site
    case params[:id]
      # GET /api/site/info
      # Parameters: sid - Site ID
      when "info"
        redirect_to :controller => 'sites', 
                    :action     => 'show', 
                    :id         => params[:sid]
      else
        
    end
  end
  
  def achievements
    case params[:id]
      # GET /api/achievements/list
      # Parameters: None
      when "list"
        redirect_to :controller => 'achievements',
                    :action     => 'index'

      # GET /api/achievements/info
      # Parameters: aid - Achievement ID
      when "info"
        redirect_to :controller => 'achievements',
                    :action     => 'show',
                    :id         => params[:aid]
      
      #
      when "create"
      
      #
      when "delete"
      
      #
      when "earn"
      
      else
      
    end
  end
  
  def users
    case params[:id]
      when "list"
      
      when "info"
      
      when "create"
      
      when "delete"
      
      when "search"
      
      else
      
    end
  end
end
