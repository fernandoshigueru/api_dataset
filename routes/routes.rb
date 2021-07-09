require_relative "./dataset.rb"

require "csv"
require "json"
require "sinatra"
require "sinatra/base"
require "sinatra/contrib"
require "sinatra/namespace"
require "sinatra/reloader"

$uploaded_file = CSV.read("../dataset/document.csv")

namespace "/api/v1" do
  
  get "/dataset" do
    headers('Content-Type' => 'application/json')
    $uploaded_file.to_s
  end

end

after do
  $dataset.remove_row
end
