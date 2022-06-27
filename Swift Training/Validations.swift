import Foundation

func validateTextField(_ text: String) -> Bool {
    
    if text != "" {

        return true
    }
    return false
}

func validatePassword(_ password: String,
                      _ passwordConfirm: String) -> Bool {
    
    if password == passwordConfirm {
        
        return true
    }
    return false
}

func validateEmail(_ email: String) -> Bool {
    
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    
    if emailPred.evaluate(with: email) {
        
        return true
    }
    return false
}

func validateDate(_ date: String) -> Bool {
    
    let dateRegEx = "[0-9]{2}+/[0-9]{2}+/[0-9]{4}||[0-9]{8}"
    
    let datePred = NSPredicate(format:"SELF MATCHES %@", dateRegEx)
    
    if datePred.evaluate(with: date) {
        
        return true
    }
    return false
}

func validateName(_ name: String) -> Bool {
    
    let nameRegEx = "(?<! )[A-ZÀ-Ú]+[-a-zà-ú']+ [A-ZÀ-Ú]+[-a-zà-ú']{2,26}"

    let namePred = NSPredicate(format:"SELF MATCHES %@", nameRegEx)
    
    if namePred.evaluate(with: name) {
        
        return true
    }
    return false
}

func validateCellPhone(_ phone: String) -> Bool {
    
    let phoneRegEx = "\\([0-9]{2}+\\)[0-9]{5}+-[0-9]{4}||[0-9]{11}"

    let phonePred = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
    
    if phonePred.evaluate(with: phone) {
        
        return true
    }
    return false
}

func validateCep(_ cep: String) -> Bool {
    
    let cepRegEx = "[0-9]{5}+[0-9]{3}||[0-9]{5}+-[0-9]{3}"

    let cepPred = NSPredicate(format:"SELF MATCHES %@", cepRegEx)
    
    if cepPred.evaluate(with: cep) {
        
        return true
    }
    return false
}

func validateNumber(_ number: String) -> Bool {
    
    let numberRegEx = "[0-9]*"

    let numberPred = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
    
    if numberPred.evaluate(with: number) {
        
        return true
    }
    return false
}

print(validateNumber("123"))

print(validateCep("69921-710"))

print(validateCellPhone("(12)12345-1234"))

print(validateName("Josineia Eneias"))

print(validateDate("12/12/1234"))

print(validateEmail("a@a.com"))

print(validatePassword("123",
                       "123"))
