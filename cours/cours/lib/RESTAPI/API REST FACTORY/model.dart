class User {
  final String email;
  final String gender;
  final Username name;
  User({required this.email, required this.gender, required this.name});

  factory User.fromMap(Map<String, dynamic> e){
    final name = Username(title: e['name']['title']);
      return User(email: e['email'], gender: e['gender'], name: name);
  }

}

class Username {
  final String title;
  Username({required this.title});
}
