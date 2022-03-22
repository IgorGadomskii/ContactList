
struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
     static func getPersons() -> [Person] {
        
     var persons: [Person] = []
         
       
         let names = DataManager.shared.names.shuffled()
         let surnames = DataManager.shared.surnames.shuffled()
         let emails = DataManager.shared.emails.shuffled()
         let phoneNumbers = DataManager.shared.phoneNUmbers.shuffled()
        
        let iterationsAmount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<iterationsAmount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index])
            persons.append(person)
        }
        return persons
    }
    
    
}
