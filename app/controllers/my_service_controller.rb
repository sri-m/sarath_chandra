class MyServiceController < ApplicationController
	require 'nokogiri'
	require 'open-uri'

# Fetch and parse HTML document

  def my_api
  my_html_url = "http://nareshtrainings.com/"
  doc = Nokogiri::HTML(open(my_html_url))
  @html_result = doc.at_css("h2").text
  	@html_items = doc.at_css("#jm-maincontent p").text

  	my_xml_url = "http://api.openweathermap.org/data/2.5/weather?q=London&mode=xml"
  	my_doc = Nokogiri::XML(open(my_xml_url))
  	@xml_result = my_doc.xpath("//city/@name").text
  	@temp = my_doc.xpath("//temperature/@value").text
  	@dir = my_doc.xpath("//direction/@name").text
  	my_stock  = "http://abundancestockadvisors.com/"
  end
	
end
