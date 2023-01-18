# Hello and welcome to night_writer!
## In this program, a user will be able to translate between english and braille!

### Get started!
1. Write a message in the message.txt file
    - example (Hello world!)
2. After writing a message, go to you terminal and enter the following commands 
    - ( ruby ./lib/night_writer.rb message.txt braille.txt )
3. If you've entered the command correctly, a message will appear in your terminal letting you know braille.txt has been created containing its total amount of characters!
4. Open the newly created file braille.txt and see your message translated to braille!
5. If you'd like to see your braille translated back to english, copy and paste the content from braille.txt into the message.txt file.
6. Enter the following commands into the terminal 
    - (ruby ./lib/night_reader.rb braille.txt original_message.txt)
7. If you've entered the command correctly, a message will appear in your terminal letting you know original_message.txt has been created containing its total amount of characters!
8. Open the newly created file original_message.txt and see your message translated from braille back into english! 