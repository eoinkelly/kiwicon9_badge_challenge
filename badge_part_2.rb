require "pry"

# def hex_to_bin(s)
#   s.scan(/../).map { |x| x.hex.chr }.join
# end
#
# def bin_to_hex(s)
#   s.each_byte.map { |b| b.to_s(16) }.join
# end

# cipher text seems to be 60 bytes of hex encoded binary data
cipher_text = "7C4E44C83D6610F8C517AC24D755AFA4AA6ADA1FD03C6E1BEC2843B3D634"
puts "\ncipher bytes:"
p cipher_bytes = cipher_text.bytes

key = "Webdriver Torso uploaded a video"
key = "This is for your eyes only, you don’t know who your friends are..."
# key = "Go watch some youtube"
# key = "Be aware that your handler will not respond to incorrect codes."
puts "\nkey bytes:"
p key_bytes = key.bytes

# fail "cipher text and key must be same length" unless cipher_bytes.length == key_bytes.length

puts "\nclear bytes:"
p clear_bytes = cipher_bytes.zip(key_bytes).map { |cipher_byte, key_byte|
  if cipher_byte.nil? || key_byte.nil?
    0
  else
    cipher_byte ^ key_byte
  end
}

puts "\nClear text is (hopefully):"
puts clear_bytes.map(&:chr).join

# binding.pry
# puts "Tada!"
