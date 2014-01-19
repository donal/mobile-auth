require 'rack'

class MiddlewareTwo
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "middleware_two"
    p env['warden'] unless env['warden'].nil?
    request = Rack::Request.new env
    # env['params'] = request.params
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
