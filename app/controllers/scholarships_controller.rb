class ScholarshipsController < ApplicationController

  def index
    close_date = Time.now
    @scholarships = Scholarship.search(params[:search], close_date)
  end

  def new
    @scholarship = Scholarship.new
    puts @scholarship
  end

  def create
    @scholarship = Scholarship.new(scholarship_params)
    @scholarship.save
    redirect_to '/'
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:name, :url, :start_date, :close_date, :status)
  end

end
