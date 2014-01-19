require 'rack'

class TimestampMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "timestamp_middleware"

    # TODO check timestamp

    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
