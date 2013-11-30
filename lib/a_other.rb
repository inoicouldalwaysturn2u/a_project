def text_file_touched
  File.exists? '../hi.ats'
end

def remove_touched_file
  File.delete '../hi.ats'
end

##

# from http://stackoverflow.com/questions/11007111/ruby-whats-an-elegant-way-to-pick-a-random-line-from-a-text-file/11007320#11007320
def pick_random_line( the_file )
  chosen_line = nil
  File.foreach( the_file ).each_with_index do | line, number |
    chosen_line = line if rand < 1.0/(number+1)
  end
  return chosen_line
end

def pick_random_line_in_memory( the_file )
  File.readlines( the_file ).sample
end