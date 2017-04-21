# Anagrams

#### Ruby Friday Project number 1 - Create Anagrams and Antigrams, 04/21/17

#### By Galin McMahon

## Description

Program receives a word and an anagram of that word then checks that it is a valid anagram.  If none of the letters in the two words are the same, it lets us know that the word is an antigram.

## Specifications

| Behavior | Input | Output |
|----------|-------|--------|
| Receive two words from user | "stop", "tops" | "stop", "tops" |
| Check if the two words are anagrams | "stop", "tops" | true |
| If above is true, check if it's also a palindrome | "stop" | false |
| Check for upper or lower case so that mismatched cases are still anagrams | "Stop" | "stop" |
| Check to see that the inputted words are actually words | "stop" | true |
| If words aren't anagrams, determine whether they're antigrams | "hello", "bats" | true |
| Apply above to multiple words without spaces or punctuation | "stop now" | "stopnow" |

## Setup/Installation Requirements

* Clone the anagram folder from https://github.com/GalinMcMahon/Anagrams.git
* Open the index.erb file and enter two words

## Known Bugs

No known bugs

## Support and contact details

Please feel free to contact me at github profile directly.

## Technologies Used

Ruby

### License

MIT

Copyright (c) 2017 **_{Galin McMahon}_**
