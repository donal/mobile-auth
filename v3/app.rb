require 'rack'
require 'json'

module App
  class EndPoint
    def self.call(env)
      response = {
        status: "SUCCESS",
        message: "You have arrived!"
      }
      [200, {"Content-Type" => "application/json"}, [response.to_json]]
    end
  end
end
