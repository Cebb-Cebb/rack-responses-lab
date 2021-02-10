class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.hour
        if time <= 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end 
        resp.finish
    end 
end      

# def call(env)
#     return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
# end

# def pretty_response
#   (Time.now.to_i <= 12.00) ?  ["<em>Good Morning!/em>"] : ["<em>Good Afternoon!</em>"]
# end