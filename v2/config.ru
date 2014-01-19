#\ -p 9992
require 'rack-colorized_logger'

require_relative 'app'
require_relative 'middleware_one'
require_relative 'middleware_two'

use MiddlewareOne, key: "value"
use MiddlewareTwo

run App::EndPoint

