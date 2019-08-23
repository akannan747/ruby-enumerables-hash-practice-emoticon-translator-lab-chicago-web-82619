# require modules here
require "yaml"

def load_library
  emoticons = YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon(emoticon)
  emoticons = load_library
  emoticons.find { |(meaning, emotes)|
    emotes[0] == emoticon
  }[1][1]
end

def get_english_meaning(emoticon)
  emoticons = load_library
  emoticons.find { |(meaning, emotes)|
    emotes[1] == emoticon
  }[0]
end