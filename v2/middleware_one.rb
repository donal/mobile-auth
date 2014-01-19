require 'bigdecimal'
require 'rack'

class MiddlewareOne
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts @start_time
    puts "middleware_one"
    request = Rack::Request.new env
    env['params'] = request.params

    @start_time = BigDecimal.new(Time.now.to_f, 15)
    status, headers, bodies = @app.call(env)

    # do something (to response)
    bodies[0] = "<H1>" + bodies[0] + "</H1>"
    @end_time = BigDecimal.new(Time.now.to_f, 15)

    # puts "start_time = %0.9f" % [@start_time]
    # puts "end_time = %0.9f" % [@end_time]

    puts "duration = %0.9f" % [(@end_time - @start_time) * 1000]

    return [status, headers, bodies]
  end
end
