# Cobra-TheWolfcs-project

This encryption script is a powerful tool designed to protect and secure your sensitive information. It employs advanced algorithms to convert your data into ciphertext, rendering it unreadable to anyone without the decryption key. This script plays a pivotal role in ensuring the privacy and security of your valuable information, making it an indispensable asset for safeguarding your data in an increasingly digital world.(9awit ik)

 ![image](https://cdn.discordapp.com/attachments/641970433456865331/1163979198289952828/image.png?ex=65418b1a&is=652f161a&hm=06cd3e0f3385b7175f66266a23c50cc4c67795652940a471e572b4df7944993e&)

# Description:

This Bash script is an encryption program that takes a text input and transforms it into a different form. Here's how it works:

It defines a function encrypt_text which takes a string input and returns the encrypted version of that string.

The script iterates through each character in the input text.

For each character, it determines its ASCII code using printf "%d" "'$char". This code represents the numerical value of the character.

It checks if the ASCII code falls within the range of 0 to 10. If it does, it means the character is a digit or a special character, and in that case, it leaves the character unchanged.

If the ASCII code is not within the range of 0 to 10, it subtracts 10 from the code. This process converts letters and other characters into different characters.

The script then converts the modified ASCII code back into a character and appends it to the encrypted_text string.

Finally, the encrypted text is displayed to the user.

In essence, this script shifts the characters of the input text by subtracting 10 from their ASCII codes, while leaving digits and special characters unchanged.


[(Back to top)](#table-of-contents)


The MIT License (MIT) 2017 - [Athitya Kumar](https://github.com/athityakumar/). Please have a look at the [LICENSE.md](LICENSE.md) for more details.
