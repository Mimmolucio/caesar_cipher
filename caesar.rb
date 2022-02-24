require 'pry-byebug'

def caesar_cipher(string, shift)
    chars = string.split("")
    (chars.map do |character|
        # Check if Character is a letter
        if character =~ /[A-Za-z]/
            if is_lower(character) == true
                # Logic for lowercase
                if (character.ord + shift).between?(97, 122) == true
                    (character.ord + shift).chr
                elsif shift < 0
                    (character.ord + shift + 26).chr
                elsif shift > 0
                    (character.ord + shift - 26).chr
                end
            else
                # Logic for uppercase
                if (character.ord + shift).between?(65 ,90) == true
                    (character.ord + shift).chr
                elsif shift < 0
                    (character.ord + shift + 26).chr
                elsif shift > 0
                    (character.ord + shift - 26).chr   
                end
        end
    else
        # Logic if not a letter (Whitespace, Punctuation, Numbers,...)
        character
    end
end
         
    ).join("")
end

# Check for lowercase
def is_lower(char)
    char.ord.between?(97, 122)
end

# Test
puts caesar_cipher("Hello how are you?", 2)
