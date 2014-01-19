#\ -p 9994

require_relative 'app'
require_relative 'middleware_one'
require_relative 'middleware_two'
require_relative 'middleware_three'
require_relative 'middleware_four'
require 'warden'
require_relative 'password_strategy'

use MiddlewareOne, key: "value"
use MiddlewareTwo

use Warden::Manager do |manager|
  manager.default_strategies :password
  manager.failure_app = App::BadAuth
end

use MiddlewareThree
use MiddlewareFour

run App::EndPoint

