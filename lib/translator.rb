require 'pry'
# require modules here
require 'yaml'

def load_library(file)
  emoticons = YAML.load_file(file)
  # code goes here
  empty_hash = {}
  emoticons.each do |key,value|
    #value.each do |emoticon|
      empty_hash[key] = {:english => value[0], :japanese => value[1]}
     #binding.pry
  end
return empty_hash
end

def get_japanese_emoticon(file, english)
  emoticons = load_library(file)
  emoticons.each do |key, value|
    if value[:english] == english
      #binding.pry
 return value[:japanese]
        #binding.pry
        #return emoticon
      
  #binding.pry
  # code goes here
  end
end
return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, japanese)
  emoticons = load_library(file)
  emoticons.each do |key, value|
    value.each do |language, emoticon|
      if language == :japanese && emoticon == japanese
        #binding.pry
        return key
      end
  #binding.pry
  # code goes here
  end
  end
  return "Sorry, that emoticon was not found"
end



