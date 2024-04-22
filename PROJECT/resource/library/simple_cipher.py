def convert_simple_cipher(encrypted, k):
    result = ""
    for str_be in encrypted:
        if str_be.isalpha():  
            str_af = chr(((ord(str_be) - ord('A') - int(k)) % 26) + ord('A'))
            result += str_af
        else:
            result += str_be
    return result