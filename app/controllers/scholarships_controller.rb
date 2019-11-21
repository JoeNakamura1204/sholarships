class ScholarshipsController < ApplicationController

  def index
    close_date = Time.now
    @scholarships = Scholarship.search(params[:search], close_date, params[:types], params[:purposes])
    # binding.pry
  end

  def new
    @scholarship = Scholarship.new
    puts @scholarship
  end

  def create
    @scholarship = Scholarship.new(scholarship_params)
    @scholarship.save
    redirect_to root_path
  end

  def admin_index
    @scholarships = Scholarship.all
  end

  def edit
    @scholarship = Scholarship.find_by(id: params[:id])
  end

  def update
    @scholarship = Scholarship.find_by(id: params[:id])
    @scholarship = Scholarship.update(scholarship_params)
    redirect_to :admin_index
  end

  def destroy
    Scholarship.find_by(id: params[:id]).destroy
    redirect_to :admin_index
  end

  private

  def scholarship_params
    params.require(:scholarship).permit(:name, :url, :start_date, :close_date, :status, :types, :purposes, :capacity)
  end

end
