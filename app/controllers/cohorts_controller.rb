class CohortsController < ApplicationController
  def index

  end

  def create
    new_cohort = Cohort.create(
      cohort_name: params[:cohort][:cohort_name],
      start_date: params[:cohort][:start_date],
      end_date: params[:cohort][:end_date]
    )
    redirect_to '/pages/cohorts'
  end

  def index
    @all_cohorts = Cohort.all
  end
end
