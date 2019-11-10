require 'open-uri'
require 'nokogiri'

class Scholarship < ApplicationRecord

  def self.search(status,close_date)
    return Scholarship.all unless status&&close_date
    # binding.pry
    Scholarship.where('status =?', "#{status}").where('close_date >?', "#{close_date}")
  end

end

