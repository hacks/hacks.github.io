class AdminController < ApplicationController
  http_basic_authenticate_with name: NUHacks::Admin[:username], password: NUHacks::Admin[:password]
end
