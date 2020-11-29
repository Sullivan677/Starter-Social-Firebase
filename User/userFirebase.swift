import FirebaseFirestore

extension appUser {
    static func build(from documents: [QueryDocumentSnapshot]) -> [appUser] {
        var users = [appUser]()
        for document in documents {
            users.append(appUser(name: document["name"] as? String ?? "",
                              email: document["email"] as? String ?? ""))
        }
        return users
    }
}
