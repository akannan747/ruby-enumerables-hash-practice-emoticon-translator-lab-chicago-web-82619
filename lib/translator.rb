# require modules here
require "yaml"

def load_library
  emoticons = YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon(emoticon)
  emoticons = load_library
  emoticons.find { |(meaning, emotes)|
    emotes[0] == emoticon
  }
end

def get_english_meaning
  # code goes here
end