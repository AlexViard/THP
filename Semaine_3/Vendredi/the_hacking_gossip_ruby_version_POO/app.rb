require 'bundler'
Bundler.require

require_relative 'lib/app/gossip'
require_relative 'lib/app/controller'
require_relative 'lib/app/router'
require_relative 'lib/app/view'

Router.new.perform
