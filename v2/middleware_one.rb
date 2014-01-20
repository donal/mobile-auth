require 'rack'

class MiddlewareOne
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "middleware_one"
    request = Rack::Request.new env
    env['params'] = request.params
    p env

    status, headers, bodies = @app.call(env)

    # do something (to response)
    # bodies[0] = "<H1>" + bodies[0] + "</H1>"

    return [status, headers, bodies]
  end
end
