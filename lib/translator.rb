require 'pry'
require 'yaml'

def load_library(yaml)
  hash = YAML.load_file('lib/emoticons.yml')
    hash.each do |key, value|
      hash[key] = {:english => hash[key].first, :japanese => hash[key].last}
    end
end

def get_english_meaning(yaml, japanese_emoticon)
  lib = load_library(yaml)
    lib.each do |key, value|
    if japanese_emoticon == value[:japanese]
      return key
    end
  end
  return "Sorry, that emoticon was not found"
end
    
def get_japanese_emoticon(yaml, english_emoticon)
  lib = load_library(yaml)
    lib.each do |key, value|
    if english_emoticon == value[:english]
      return value[:japanese]
    end
  end 
 return "Sorry, that emoticon was not found"
end
    
  





