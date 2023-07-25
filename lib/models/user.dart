class User {
  final String firstName;
  final String lastName;
  final String phoneNumbar;
  final String email;
  final String country;
  final String dob;
  final String city;
  final String smallImage;
  final String bigImage;
  User(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumbar,
      required this.email,
      required this.dob,
      required this.country,
      required this.city,
      required this.smallImage,
      required this.bigImage});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        firstName: json['name']['first'],
        lastName: json['name']['last'],
        phoneNumbar: json['phone'],
        email: json['email'],
        dob: json['dob']['date'],
        country: json['location']['country'],
        city: json['location']['city'],
        smallImage: json['picture']['thumbnail'],
        bigImage: json['picture']['large']);
  }
}
