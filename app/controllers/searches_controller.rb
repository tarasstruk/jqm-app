class SearchesController < ApplicationController


  def update
    session[:search] = nil
    session[:search] = {
        salary: params[:salary],
        keyword: params[:keyword]
    }

    logger.warn "Search updated: #{session[:search].inspect}"
    redirect_to search_jobs_path
  end

end
