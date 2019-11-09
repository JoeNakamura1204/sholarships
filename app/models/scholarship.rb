require 'open-uri'
require 'nokogiri'

class Scholarship < ApplicationRecord

  def self.search(search)
    return Scholarship.all unless search
    Scholarship.where(['name LIKE ?', "%#{search}%"])
  end

end

