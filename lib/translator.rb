# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  library = {}
  YAML.load_file(file_path).each do |key, value|
    libray[key] = []
    library[key][:english] = value[0]
    library[key][:japanese] = value[1]
end
library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  result = library[emoticon][1]
    if result
      result
  else
    "Sorry, that emoticon was not found."
  end
end

def get_english_meaning
  # code goes here
end
