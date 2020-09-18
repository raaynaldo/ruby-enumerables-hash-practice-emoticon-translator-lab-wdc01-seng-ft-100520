# require modules here
require 'yaml'
require 'pry'


def load_library(lib)
  # code goes here
  emoticon = YAML.load_file(lib)
  emoticon.each {|key, value|
    emoticon[key] = {:english => value[0], :japanese => value[1]}
  }
end

def get_japanese_emoticon(lib, emoticon)
  # code goes here
  e = load_library(lib)
  e.each{|key, value|
    if(value[:english] == emoticon)
      return value[:japanese]
    end
  }
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(lib, emoticon)
  # code goes here
  e = load_library(lib)
  e.each{|key, value|
    if(value[:japanese] == emoticon)
      return value[:english]
    end
  }
  return "Sorry, that emoticon was not found"
end
