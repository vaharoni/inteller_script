require 'bundler/setup'
require 'active_record'
require 'elasticsearch'

ActiveRecord::Base.establish_connection adapter: 'mysql2', database: 'inteller'

Dir.glob(File.expand_path('app/**/*.*')).each{ |x| require(x) }

class Inteller
end
