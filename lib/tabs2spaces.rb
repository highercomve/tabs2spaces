require "tabs2spaces/version"

module Tabs2spaces
  class Converter

    def initialize(folder, options)
        @folder = folder || "./"
        @options = options
    end

    def file_expand(file)
      number = @options[:number]
      unless @options[:inversed]
        puts "Expanding tabs on: " + file
        return `expand -i -t #{number} #{file}` 
      else
        puts "Unexpanding spaces on: " + file
        return `unexpand --first-only -t #{number} #{file}`
      end
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

    def file_expand_and_write(file)
      file_write file, file_expand(file)
    end

    def folder_expand_and_write(folder)
      files = File.join(@folder, '**', @options[:pattern])
      Dir.glob(files).each do |file|
        file_expand_and_write file
      end
    end

    def simple_convert
      unless File.directory?(@folder)
        file_expand_and_write @folder
      else
        folder_expand_and_write(@folder)
      end
    end

    def convert_between 
      @options[:inversed] = true
      simple_convert
      @options[:inversed] = false
      @options[:number] = @options[:convertion]
      simple_convert
    end

    def convert
      if @options[:convertion].nil?
        simple_convert
      else
        convert_between
      end
    end

  end
end
