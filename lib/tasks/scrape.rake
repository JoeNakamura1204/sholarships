require 'open-uri'

namespace :scrape do

  task :navar_title => :environment do
    url = 'http://matome.naver.jp/tech'

    charset =nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)


    doc.xpath('//li[@class="mdTopMTMList01Item"]').each do |node|
      puts node.css('h3').inner_text
    end
  end

end

