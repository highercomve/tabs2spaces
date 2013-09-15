Tabs2spaces
===========

Covert all tabs in spaces using the shell commands expand, can undo using unexpand shell command (convert spaces into tabs)

## Installation

Add this line to your application's Gemfile:

    gem 'tabs2spaces'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tabs2spaces

## Usage

Example of basic usage convert tabs to 2 spaces in all files .rb inside the actual folder  (./)

	cd /ruby_project_folder

	tabs2spaces

Parameters 
	
	tabs2paces -n NUMBER -p "PATTERN" -i

NUMBER: number of spaces to replace the tab by default is 2 (OPTIONAL)

PATTERN: Pattern to determine the files by default is "*.rb", use "*.js" (OPTIONAL)

INVERSED: -i parameter set the script to convert spaces into tabs using NUMBER y PATTERN 

Sintaxis

	tabs2paces [options] DIRECTORY

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
