require 'rack'

class MiddlewareThree
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "middleware_three"
    # require 'pry'
    # binding.pry
    request = Rack::Request.new env
    # env['params'] = request.params
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
