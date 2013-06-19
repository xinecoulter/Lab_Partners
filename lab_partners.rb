puts "How many students should there be per group?"
prompt = gets.chomp.to_i

students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "Andrew Silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Douglas", "Wesley Carr", "Zachariah Reitano"]

students.shuffle!

if (students.length % prompt) == 1
  groups = students.each_slice(prompt).to_a
  groups[-2].push(groups[-1])
  groups.pop
  groups[-1].flatten!
  p groups
else
  groups = students.each_slice(prompt).to_a
  p groups
end