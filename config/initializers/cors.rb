Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:5173" , "http://localhost:3000" , "http://avatar-plaza"
        resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
end