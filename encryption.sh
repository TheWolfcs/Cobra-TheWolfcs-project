#!/bin/bash

echo "
█████████████████████████████████████████████████████████████████████████████████████████
█▄─█▀▀▀█─▄█─▄▄─█▄─▄███▄─▄▄─█▄─▄▄─█▄─▀█▄─▄█─▄▄▄─█▄─▄▄▀█▄─█─▄█▄─▄▄─█─▄─▄─█▄─▄█─▄▄─█▄─▀█▄─▄█
██─█─█─█─██─██─██─██▀██─▄████─▄█▀██─█▄▀─██─███▀██─▄─▄██▄─▄███─▄▄▄███─████─██─██─██─█▄▀─██
▀▀▄▄▄▀▄▄▄▀▀▄▄▄▄▀▄▄▄▄▄▀▄▄▄▀▀▀▄▄▄▄▄▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▀▄▄▄▀▀▄▄▄▀▄▄▄▄▀▄▄▄▀▀▄▄▀

"
encrypt_text() {
    local input_text="$1"
    local key="$2"
    local encrypted_text=""
    
    for ((i = 0; i < ${#input_text}; i++)); do
        char="${input_text:$i:1}"
        av=$(printf "%d" "'$char")
	encrypted_ascii_value=$((av - key))
        encrypted_char=$(printf \\x$(printf %x "$encrypted_ascii_value"))
        encrypted_text="${encrypted_text}${encrypted_char}"
    done
    
    echo "$encrypted_text"
}
read -p "Enter the key:" key 
read -p "Enter the text to encrypt: " input_text
encrypted_text=$(encrypt_text "$input_text" "$key")

echo "Encrypted text: $encrypted_text"
