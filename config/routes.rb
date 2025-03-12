Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  get("/login", { :controller => "sessions", :action => "new"})
  post("/login", { :controller => "sessions", :action => "create"})
  get("/logout", { :controller => "sessions", :action => "destroy"})
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
end
