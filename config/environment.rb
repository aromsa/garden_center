require 'pry'
require 'active_record'
require 'sqlite3'
require_relative '../lib/customer_plant'
require_relative '../lib/customer'
require_relative '../lib/plant'

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite3"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'lib'