require "tabs2spaces/version"

module Tabs2spaces
  class Converter

    def initialize(folder, options)
        @folder = folder || "./"
        @options = options
    end

    def file_expand(file)
      puts "Expanding tabs on " + file
      return `expand -t #{@options[:number]} -i #{file}` 
    end

    def file_write(file, data)
      begin
        new_file = File.open(file, "w") do |f|
          f.puts data
        end
      rescue IOError => e
        puts e
      ensure
        new_file.close unless new_file == nil
      end
    end

    def convert
      unless File.directory?(@folder)
        new_file = file_expand @folder
        file_write @folder, new_file
      else
        folder = File.join(@folder, '**', @options[:pattern])
        Dir.glob(folder).each do |file|
          new_file = file_expand file
          file_write file, new_file
        end
      end
    end
  end
end
