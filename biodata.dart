import 'dart:io';

void main() {
  // Collecting user information
  stdout.write("Enter your Name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your Phone Number: ");
  String? phone = stdin.readLineSync();

  stdout.write("Enter your Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter your Height (in cm): ");
  double height = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Weight (in kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Address: ");
  String? address = stdin.readLineSync();

  stdout.write("Enter your Hobbies (comma separated): ");
  String? hobbiesInput = stdin.readLineSync();
  List<String> hobbies = hobbiesInput!.split(',').map((hobby) => hobby.trim()).toList();

  // Displaying formatted biodata
  print("\n================== 📄 BIODATA ==================");
  print("👤 Name      : $name");
  print("📞 Phone     : $phone");
  print("🎂 Age       : $age years");
  print("📏 Height    : ${height} cm");
  print("⚖️ Weight    : ${weight} kg");
  print("🏠 Address   : $address");
  print("🎯 Hobbies   :");

  for (int i = 0; i < hobbies.length; i++) {
    print("   ${i + 1}. ${hobbies[i]}");
  }

  print("===============================================");
}
