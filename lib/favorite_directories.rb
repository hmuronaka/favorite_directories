#!/usr/bin/env ruby

require 'yaml'

DIRS_PATH=File.expand_path("~/.favorite_directories", __FILE__)

def load_dirs
  load_dirs_with_path(DIRS_PATH)
end

def load_dirs_with_path(yaml_path)
  yaml_path = File.expand_path(yaml_path)

  directories = []
  begin
    str = File.read(yaml_path)
    directories = YAML.load(str)
  rescue => e
  end

  directories
end

def save_dirs(dirs)
  save_dirs_with_path(dirs, DIRS_PATH)
end

def save_dirs_with_path(dirs, path)
  yaml_path = File.expand_path(path)

  File.open(yaml_path, 'w') do |f|
    f.write dirs.to_yaml
  end
end
