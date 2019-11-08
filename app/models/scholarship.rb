require 'open-uri'
require 'nokogiri'

class Scholarship < ApplicationRecord

  def scrapping(url)

    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)

    doc.title
  end

end

