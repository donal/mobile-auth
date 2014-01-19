require 'rack'

class SignatureMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "signature_password"
    # p env['params']

    # valid = true
    # unless env['REQUEST_METHOD'] == 'POST' && env['PATH_INFO'].match(/\/(session|users)/)
    #   valid = false
    #   # TODO check signature
    #   # get the params from env['auth_params']
    #   # at this point the env['auth_params'] must include consumer_key and
    #   # signature
    # end

    # if valid
    #   status, headers, bodies = @app.call(env)
    # else
    #   status = 403
    #   headers = {"Content-Type" => "application/json"}
    #   response = {
    #     status: "SIGNATURE FAILURE",
    #     message: "Who are you?"
    #   }
    #   bodies = [response.to_json]
    # end
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
