def caesar_cipher(str,shift)
    shifted_str = ""

    str.each_char do |char|
        if char.match(/[A-Za-z]/)
            ascii_code_offset = char.match(/[A-Z]/) ? 65 : 97
            shifted_char = (((char.ord - ascii_code_offset) + shift) % 26 + ascii_code_offset).chr
            # Append the character
            shifted_str << shifted_char
        else 
            # Append the non alphabetical letters
            shifted_str << char
        end
    end
    # return the shifted string
    shifted_str
end



# Test the function 
puts caesar_cipher("What a string!",5)