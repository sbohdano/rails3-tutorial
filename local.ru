$:.unshift('lib') unless $:.include?('lib')

require 'rails3-tutorial'

gem 'wbzyl-rack-codehighlighter'
require 'rack/codehighlighter'

gem 'ultraviolet'
require 'uv'

use Rack::ShowExceptions
use Rack::Lint
use Rack::Codehighlighter, :ultraviolet, :element => 'pre>code', :markdown => true
run WB::Rails3Tutorial.new
