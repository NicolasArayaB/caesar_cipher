ALPHA = 26 # Number of letters in the alphabet.

def caesar_cipher(text, num)
    arr = text.split("")
    cipher_arr = []
    arr.map do |char|
        if ("a".."z").include?(char) || ("A".."Z").include?(char)
            cipher_char = (char.ord + num).chr
            if (("a".."z").include?(cipher_char) || ("A".."Z").include?(cipher_char)) 
                cipher_arr.push(cipher_char)
            else
                cipher_arr.push((char.ord + num - ALPHA).chr)
            end
        else
            cipher_arr.push(char)
        end
    end
    cipher_text = cipher_arr.join
end
p caesar_cipher("What a string!", 5)