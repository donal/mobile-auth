#\ -p 9992

require_relative 'app'
require_relative 'middleware_one'
require_relative 'middleware_two'

use MiddlewareOne
use MiddlewareTwo

run App::EndPoint

