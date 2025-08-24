
//--- VAIBLE DECLARATION ---

// Character sets for password checking
let uppercase_letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
let lowercase_letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
let special_characters = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "{", "}", ";", ":", "'", "\"", ",", "<", ".", ">", "/", "?", "|", "~", "`"]

//mutable variables
var password = "Aust"
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
var password_grade: Bool = false


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
    strength_score += 2
} else {
    strength_score += 0
}

if has_uppercase && uppercase_count >= 3 {
    strength_score += 3
} else if has_uppercase && uppercase_count < 3 { 
    strength_score += 1
} else {
    strength_score += 0
}

if has_lowercase && lowercase_count >= 3 {
    strength_score += 3
} else if has_lowercase && lowercase_count < 3 { 
    strength_score += 1
} else {
    strength_score += 0
}

if has_digit && digit_count >= 3 {
    strength_score += 3
} else if has_digit && digit_count < 3 { 
    strength_score += 1
} else {
    strength_score += 0
}

if has_special_character && special_character_count >= 3 {
    strength_score += 3
} else if has_special_character && lowercase_count < 3 { 
    strength_score += 1
} else {
    strength_score += 0
}   

if strength_score >= 9 {
    password_grade = true
} else {
    password_grade = false
}

// --- OUTPUT ---
print("Password: \(password)")
print("Password Strength Score: \(strength_score) out of 14")
print("\( Double(strength_score) / 14 * 100)% strength")
print("Password is strong: \(password_grade)")

if !password_grade {
    print("Password must be at least 12 characters long and contain at least 3 uppercase letters, 3 lowercase letters, 3 digits, and 3 special characters.")
}




