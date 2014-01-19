require 'rack'

class ConsumerMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "consumer_password"

    # valid = true
    # unless env['REQUEST_METHOD'] == 'POST' && env['PATH_INFO'].match(/\/(session|users)/)
    #   # TODO check consumer
    #   # get the consumer_key from env['auth_params']
    #   # (it must be set at this point)
    #   # lookup user using consumer_key and load into env['user']
    # end

    # if valid
    #   status, headers, bodies = @app.call(env)
    # else
    #   status = 403
    #   headers = {"Content-Type" => "application/json"}
    #   response = {
    #     status: "CONSUMER FAILURE",
    #     message: "Who are you?"
    #   }
    #   bodies = [response.to_json]
    # end
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
