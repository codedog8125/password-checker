
//--- VAIBLE DECLARATION ---

// Character sets for password checking
let uppercase_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
let lowercase_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
let special_characters = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "{", "}", ";", ":", "'", "\"", ",", "<", ".", ">", "/", "?", "|", "~", "`"]

// mutibel vaibles
var password = ""
var password_length = password.count
var has_uppercase = false
var has_lowercase = false
var has_digit = false
var has_special_character = false
var uppercase_count = 0
var lowercase_count = 0
var digit_count = 0
var special_character_count = 0
var strength_score = 0

// checks the password for all types of characters, and counts them
for letter in password {
    if uppercase_letters.contains(String(letter)) {
        has_uppercase = true
        uppercase_count += 1
    } else if lowercase_letters.contains(String(letter)) {
        has_lowercase = true
        lowercase_count += 1
    } else if digits.contains(String(letter)) {
        has_digit = true
        digit_count += 1
    } else if special_characters.contains(String(letter)) {
        has_special_character = true
        special_character_count += 1
    }
}

if password_length >= 12 {
    strength_score += 1
}

if has_uppercase && uppercase_count >= 3 {
    strength_score += 3
} else if has_uppercase && uppercase_count < 3 { 
    strength_score += 1
}

if has_lowercase && lowercase_count >= 3 {
    strength_score += 3
} else if has_lowercase && lowercase_count < 3 { 
    strength_score += 1
}

if has_digit && digit_count >= 3 {
    strength_score += 3
} else if has_digit && digit_count < 3 { 
    strength_score += 1
}

if has_special_characters && special_character_count >= 3 {
    strength_score += 3
} else if has_special_charactersn && lowercase_count < 3 { 
    strength_score += 1
}

print("Password Strength Score: \(strength_score) out of 13")
print("\(strength_score / 13 * 100)% strength")
