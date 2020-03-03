require "nokogiri"
require "open-uri"

module Nx
  class GatherProxy
    def self.fetch
      re_port = /"PROXY_PORT":"(.*?)"/
      re_ip = /"PROXY_IP":"(.*?)"/

      doc = Nokogiri::HTML(
        open(
          "https://proxygather.com/proxylist/country?c=China",
          read_timeout: 5,
        )
      )

      # process html use selector
      rows = doc.css("#tblproxy script")
      data = []
      rows.each do |row|
        str = row.text
        port = re_port.match(str)[1].to_i(16)
        ip = re_ip.match(str)[1].to_s
        data << { ip: ip, port: port }
      end

      return data
    end
  end
end
