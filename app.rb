require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/to_do")
require "./lib/list.rb"
require("pg")

DB = PG.connect({:dbname => "task"})

get("/") do
  erb(:index)
end

get("/lists/new") do
  erb(:list_form)
end

post("/lists") do
  name = params.fetch("name")
  list = List.new({:name => name, :id => nil})
  list.save()
  erb(:success)
end

get('/lists') do
  @lists = List.all()
  erb(:lists)
end

get("/lists/:id") do
  # @list_id = params.fetch("id").to_i()
  @list = List.find(params.fetch("id").to_i())
  erb(:list)
end
