require 'rack'

class TokenMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "token_middleware"
    request = Rack::Request.new env
    env['params'] = request.params
    p env

    # valid = true
    # if env.include?('HTTP_AUTHORIZATION')
    #   # TODO extract params and check that timestamp, nonce, udid are there
    #   # (signature and consumer_key may also be passed) and there are no
    #   # additional fields
    #   # then store in:
    #   env['auth_params'] = {}
    # else
    #   valid = false
    # end

    # if valid
    #   status, headers, bodies = @app.call(env)
    # else
    #   status = 400
    #   headers = {"Content-Type" => "application/json"}
    #   response = {
    #     status: "TOKEN INVALID",
    #     message: "Bad request"
    #   }
    #   bodies = [response.to_json]
    # end
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
