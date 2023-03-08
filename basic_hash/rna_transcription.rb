# Given a DNA strand, return its RNA complement (per RNA transcription).

# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input: 'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

def to_rna(string)
  i = 0
  rna = ""
  while i < string.length
    if string[i].upcase == "G"
      rna << "C"
    elsif string[i].upcase == "C"
      rna << "G"
    elsif string[i].upcase == "T"
      rna << "A"
    elsif string[i].upcase == "A"
      rna << "U"
    end
    i += 1
  end
  return rna
end

p to_rna("ACGTGGTCTTAA")
