# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  library = {"get_emoticon" => {}, "get_meaning" => {}}
  YAML.load_file(file_path).each do |key, array|
    english,japanese = array
    library[key][english] = japanese
    library[key][japanese] = meaning
end
library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
    if result
      result
  else
    return "Sorry, that emoticon was not found."
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
