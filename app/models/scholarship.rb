require 'open-uri'
require 'nokogiri'

class Scholarship < ApplicationRecord

  enum status: { high_school: 1, college: 2 }
  enum types: { loan: 1, grant: 2 }
  enum purposes: { living: 1, abroad: 2 }

  def self.search(status, close_date, types, purposes)
    return Scholarship.all unless status&&close_date
    Scholarship.where('status =?', "#{status}")
        .where('close_date >?', "#{close_date}")
        .where('types =?',"#{types}")
        .where('purposes =?',"#{purposes}")
  end

end

