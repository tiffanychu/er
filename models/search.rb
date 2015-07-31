
def subjects(subject)
  subjects = ["science",  "biology", "chemistry", "math","geometry", "algebra", "english", "history", "language", "physics", "gpa"] 
  if subjects.include?(subject)
    return "#{subject}"
  else
    return "error:no page is called #{subject}"
  end
end