# encoding: UTF-8

class JobsController < ApplicationController

  def index
    search_criteria = (session[:search] || {})
    keyword = search_criteria[:keyword].to_s
    salary = (search_criteria[:salary].try(:to_i)  || 50)*1000
    @jobs = Job.all(conditions: [%{title ilike ('%' || ? || '%') and salary >= ?}, keyword, salary ])
  end


  def show
    @job = Job.find(params[:id])
  end

end