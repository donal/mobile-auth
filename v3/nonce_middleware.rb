require 'rack'

class NonceMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "nonce_middleware"

    # TODO check nonce

    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
