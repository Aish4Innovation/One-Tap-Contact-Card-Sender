class ContactInfo {
  final String name;
  final String email;
  final String phone;
  final String linkedin;
  final String instagram;
  final String twitter;

  ContactInfo({
    required this.name,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.instagram,
    required this.twitter,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'linkedin': linkedin,
    'instagram': instagram,
    'twitter': twitter,
  };

  factory ContactInfo.fromJson(Map<String, dynamic> json) => ContactInfo(
    name: json['name'] ?? '',
    email: json['email'] ?? '',
    phone: json['phone'] ?? '',
    linkedin: json['linkedin'] ?? '',
    instagram: json['instagram'] ?? '',
    twitter: json['twitter'] ?? '',
  );
}