import Foundation

//MARK: - Are the letters unique?
func challenge1a(input:String) -> Bool{
    var checkedLetters = [Character]()
    for char in input{
        if checkedLetters.contains(char){
            return false
        }
        checkedLetters.append(char)
    }
    return true
}

func challenge1b(input:String) -> Bool{
    return Set(input).count == input.count
}

// MARK: - Is a string a palindrome?
func challenge2(input:String) -> Bool{
    let lowercase = input.lowercased()
    return lowercase.reversed() == Array(lowercase)
}

// MARK: - Do two strings contain the same characters?
func challenge3a(input1:String,input2:String) -> Bool{
    var checkString = input2
    for char in input1{
        if let index = checkString.index(of:char){
            checkString.remove(at:index)
        }else{
            return false
        }
    }
    return checkString.count == 0
}

func challenge3b(input1:String,input2:String) -> Bool{
    let array1 = Array(input1)
    let array2 = Array(input2)
    //return array1.sorted() == array2.sorted()
    return array1.count == array2.count && array1.sorted() == array2.sorted()
}

// MARK: - Does one string contain another?
extension String{
    func doesContains(_ input:String) -> Bool{
        return self.uppercased().range(of: input.uppercased()) != nil
    }
    
    func isContains(_ input:String) -> Bool{
        return range(of: input, options: .caseInsensitive) != nil
    }
}

// MARK: - Count the characters
func challenge5a(input:String,count:Character) -> Int{
    var letterCount = 0
    for letter in input{
        if letter == count{
            letterCount += 1
        }
    }
    return letterCount
}

func challenger5b(input:String,count:Character) -> Int{
    return input.reduce(0){
        $1 == count ? $0 + 1 : $0
    }
}

func challenge5c(input:String,countChar:Character) -> Int{
    let array = input.map{String($0)}
    let counted = NSCountedSet(array: array)
    return counted.count(for: countChar)
}

func challenge5d(input:String,count:String) -> Int{
    let modified = input.replacingOccurrences(of: count, with: "")
    return input.count - modified.count
}

// MARK: - Remove duplicate letters from a string


