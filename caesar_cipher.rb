def caesar_cipher(text, num)
    max = 26 # Number of letters in the alphabet.
    arr = text.split("")
    cipher_arr = []
    arr.map do |char|
        if /[A-Za-z]/.match(char)
            cipher_char = (char.ord + num % max).chr
            if (/[A-Z]/.match(cipher_char) and /[A-Z]/.match(char)) || (/[a-z]/.match(cipher_char) and /[a-z]/.match(char))
                cipher_arr.push(cipher_char)
            else
                cipher_arr.push((cipher_char.ord - max).chr)
            end
        else
            cipher_arr.push(char)
        end
    end
    cipher_arr.join
end
p caesar_cipher("What a string!", 5)
