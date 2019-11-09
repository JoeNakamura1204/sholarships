class ScholarshipsController < ApplicationController

  def index
    @scholarships = Scholarship.search(params[:search])
  end

  def new
    @scholarship = Scholarship.new
    puts @scholarship
  end

  def create
    @scholarship = Scholarship.new(scholarship_params)
    @scholarship.save

  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:name, :url, :start_date, :close_date, :status)
  end

end
