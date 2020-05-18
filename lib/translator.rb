# require modules here
 require "yaml"
 require "pry"
def load_library(file_path)
 #code goes here
  emo = YAML.load_file("lib/emoticons.yml")
  frank_emo = {}
  emo.each do |name,arrays|
      frank_emo[name] ||= {}
      frank_emo[name][:english] = arrays[0]
      frank_emo[name][:japanese] = arrays[1]
  end
frank_emo
end

def get_japanese_emoticon(file_path, eng_emo)
  # code goes here
  library = load_library('./lib/emoticons.yml')
  message = "Sorry, that emoticon was not found"
  library.each do |meaning, idioms|
      return idioms[:japanese] if idioms[:english] == eng_emo
  end
else 
  message
end

def get_english_meaning(file_path, jap_emo)
  # code goes here
  library = load_library('./lib/emoticons.yml')
  library.each do |meaning, idioms|
    idioms.each do |eng, jap|
      if jap == jap_emo 
     return meaning 
   end
 end 
 end 
 end 