#\ -p 9993

require_relative 'app'
require_relative 'token_middleware'
require_relative 'timestamp_middleware'
require_relative 'nonce_middleware'
require_relative 'signature_middleware'
require_relative 'password_middleware'
require_relative 'consumer_middleware'

use TokenMiddleware
use TimestampMiddleware
use NonceMiddleware
use SignatureMiddleware
use PasswordMiddleware
use ConsumerMiddleware

run App::EndPoint

