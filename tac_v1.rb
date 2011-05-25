#! /usr/bin/ruby

#empty array
program_text = []

#class called file, one of the methods is 'open'; open accepts two arguments: open what, and in what mode
#ARGV is a an array of arguments passed through from terminal; .first or '[0]' means pull the first part of that array

File.open(ARGV[0], "r") do |file|
	if ARGV[1] == 'line'
		file.each_line do |line|
			program_text.unshift line
		end
	else
		file.each_char do |character|
			program_text.unshift character
		end
	end
end

program_text.each do |line|
	print line
end