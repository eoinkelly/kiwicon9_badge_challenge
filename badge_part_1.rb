require "pry"

class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

cipher_text = IO.read("pad.txt")

map = {
  "a" => "z",
  "b" => "y",
  "c" => "x",
  "d" => "w",
  "e" => "v",
  "f" => "u",
  "g" => "t",
  "h" => "s",
  "i" => "r",
  "j" => "q",
  "k" => "p",
  "l" => "o",
  "m" => "n",
  "n" => "m",
  "o" => "l",
  "p" => "k",
  "q" => "j",
  "r" => "i",
  "s" => "h",
  "t" => "g",
  "u" => "f",
  "v" => "e",
  "w" => "d",
  "x" => "c",
  "y" => "b",
  "z" => "a"
}

cipher_text.chars.each do |char|
  if char.is_upper?
    print map[char.downcase] ? (map[char.downcase]).upcase : char
  else
    print map[char] ? map[char] : char
  end
end
