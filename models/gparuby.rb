def gpa(ce1, ce2, ce3, ce4, ce5, g1, g2, g3, g4, g5)
  gp1 = ce1 * g1
  gp2 = ce2 * g2
  gp3 = ce3 * g3
  gp4 = ce4 * g4
  gp5 = ce5 * g5
  cetotal = ce1 + ce2 + ce3 + ce4 + ce5
  gptotal = gp1 + gp2 + gp3 + gp4 + gp5
  gpa = gptotal / cetotal
  return gpa
end

#puts gpa(1, 1, 1, 1, 1, 4.00, 4.00, 4.00, 4.00, 4.00)