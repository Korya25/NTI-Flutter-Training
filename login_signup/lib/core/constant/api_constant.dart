class ApiConstant {
  static const String baseUrl = 'https://randomuser.me/api';
  static const String getUsers = '?results=20';
}
class ApiKeys {

  // Main response keys
  static const String results = 'results';
  
  // User field keys
  static const String email = 'email';
  static const String phone = 'phone';
  static const String name = 'name';
  static const String login = 'login';
  static const String location = 'location';
  static const String picture = 'picture';
  
  // Name field keys
  static const String first = 'first';
  static const String last = 'last';
  
  // Login field keys
  static const String username = 'username';
  
  // Location field keys
  static const String city = 'city';
  static const String country = 'country';
  static const String street = 'street';
  static const String coordinates = 'coordinates';
  
  // Street field keys
  static const String streetName = 'name';
  
  // Coordinates field keys
  static const String latitude = 'latitude';
  static const String longitude = 'longitude';
  
  // Picture field keys
  static const String thumbnail = 'thumbnail';
}