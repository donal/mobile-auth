require 'rack'

class PasswordMiddleware
  def initialize(app, options = {})
    @app = app
  end

  def call(env)
    puts "password_middleware"
    # p env
    # p env['params']

    # do check for password here
    # valid = true
    # if env['REQUEST_METHOD'] == 'POST' && path = env['PATH_INFO'].match(/\/(session|users)/)
    #   # TODO check that username and password exist (you could adjust the
    #   # status message below if they are missing)
    #   username = env['params']['username']
    #   password = env['params']['password']
    #   valid = false
    #   if path.to_s == '/session'
    #     # TODO try to login user with username/password
    #   elsif path.to_s == '/users'
    #     # TODO try to create user with username/password
    #   end
    # end

    # if valid
    #   status, headers, bodies = @app.call(env)
    # else
    #   status = 403
    #   headers = {"Content-Type" => "application/json"}
    #   response = {
    #     status: "USERNAME/PASSWORD FAILURE",
    #     message: "Who are you?"
    #   }
    #   bodies = [response.to_json]
    # end
    status, headers, bodies = @app.call(env)

    return [status, headers, bodies]
  end
end
