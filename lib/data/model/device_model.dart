class DeviceModel {
  String name;
  int icon;
  String active;
  String category;

  // Constructor
  DeviceModel({
    required this.name,
    required this.icon,
    required this.active,
    required this.category
  });

  // Factory method to create a DeviceModel from JSON
  factory DeviceModel.fromJson(Map<String, dynamic> json) {
    return DeviceModel(
      name: json['name'],
      icon: json['icon'],
      active: json['active'],
      category: json['category'],
    );
  }

  // Method to convert DeviceModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon': icon,
      'active': active,
      'category': category,
    };
  }
}