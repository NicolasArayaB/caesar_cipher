ALPHA = 26 # Number of letters in the alphabet.

def caesar_cipher(text, num)
    arr = []
    text.split("").each do |c|
        if ((c.ord + num).chr != ("z".."a"))
            arr.push((c.ord + num - ALPHA).chr)
        else
            arr.push((c.ord + num).chr)
        end
    end
    p arr.join()
end
p caesar_cipher("What a string!", 5)