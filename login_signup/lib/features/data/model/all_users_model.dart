class User {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final String birthDate;
  final String image;
  final String bloodGroup;
  final double height;
  final double weight;
  final String eyeColor;
  final Hair hair;
  final Address address;
  final Bank bank;
  final Company company;
  final String role;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    required this.bloodGroup,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hair,
    required this.address,
    required this.bank,
    required this.company,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      maidenName: json['maidenName'],
      age: json['age'],
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      username: json['username'],
      password: json['password'],
      birthDate: json['birthDate'],
      image: json['image'],
      bloodGroup: json['bloodGroup'],
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      eyeColor: json['eyeColor'],
      hair: Hair.fromJson(json['hair']),
      address: Address.fromJson(json['address']),
      bank: Bank.fromJson(json['bank']),
      company: Company.fromJson(json['company']),
      role: json['role'],
    );
  }

  String get fullName => '$firstName $lastName';
}
class Hair {
  final String color;
  final String type;

  const Hair({required this.color, required this.type});

  factory Hair.fromJson(Map<String, dynamic> json) {
    return Hair(
      color: json['color'],
      type: json['type'],
    );
  }
}
class Address {
  final String address;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final Coordinates coordinates;

  const Address({
    required this.address,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    required this.coordinates,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      address: json['address'],
      city: json['city'],
      state: json['state'],
      postalCode: json['postalCode'],
      country: json['country'],
      coordinates: Coordinates.fromJson(json['coordinates']),
    );
  }
}
class Coordinates {
  final double lat;
  final double lng;

  const Coordinates({required this.lat, required this.lng});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );
  }
}
class Bank {
  final String cardNumber;
  final String cardType;
  final String cardExpire;
  final String currency;
  final String iban;

  const Bank({
    required this.cardNumber,
    required this.cardType,
    required this.cardExpire,
    required this.currency,
    required this.iban,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      cardNumber: json['cardNumber'],
      cardType: json['cardType'],
      cardExpire: json['cardExpire'],
      currency: json['currency'],
      iban: json['iban'],
    );
  }
}
class Company {
  final String department;
  final String name;
  final String title;
  final Address address;

  const Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      department: json['department'],
      name: json['name'],
      title: json['title'],
      address: Address.fromJson(json['address']),
    );
  }
}
