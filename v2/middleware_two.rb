require 'rack'

class MiddlewareTwo
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "middleware_two"
    # p env['params']
    # env["params"]["msg"] = "TWO!" if env["params"]["msg"].nil?

    status, headers, bodies = @app.call(env)

    # do something(to response)

    return [status, headers, bodies]
  end
end
