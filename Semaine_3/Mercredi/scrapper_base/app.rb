require 'bundler'
Bundler.require

require_relative 'lib/app/scrapper'

scrap = Scrappeur.new
#scrap.save_as_JSON
scrap.save_as_csv
