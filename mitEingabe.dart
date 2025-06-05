import "dart:io";

void main() {
  // Reiseroute mit Distanzen
  Map<String, int> reiseroute = {"Max": 120, "Peter": 90, "Anna": 270, "Lena": 180};
  Map<String, int> extrafriends = {}; 

int counter = 0;
while(counter != 3)
{
    print("Gib einen Freund ein");
    String? extraName = stdin.readLineSync();

    print("Gib die Entfernung ein");
    String? extraEnt = stdin.readLineSync();
    if(extraName != null && extraEnt != null)
    {
    int exEnt = int.parse(extraEnt);
    extrafriends[extraName] = exEnt;
    print("Freunde: $extrafriends");
    counter = counter + 1;
    }
    else
    print("ungültige Eingabe");
}

  // Geschwindigekeit fest
  //int geschwindigkeit = 90; // km/h

  //Eingabe der Geschwindigkeit
  print("Bitte gib die Geschwindigkeit in km/h ein:");
  String? eingabe = stdin.readLineSync();
  int geschwindigkeit = int.parse(eingabe ?? "90");

  //Fahrzeitberechnung
  double zeitMax = reiseroute["Max"]! / geschwindigkeit; // Zeit für Max
  double zeitPeter = reiseroute["Peter"]! / geschwindigkeit; // Zeit für Peter
  double zeitAnna = reiseroute["Anna"]! / geschwindigkeit; // Zeit für Anna
  double zeitLena = reiseroute["Lena"]! / geschwindigkeit; // Zeit für Lena

  //Gesamtdistanz und Fahrzeit
  int gesamtKm = reiseroute["Max"]! +
      reiseroute["Peter"]! +
      reiseroute["Anna"]! + 
      reiseroute["Lena"]!; // Gesamtdistanz
  double durchEnt = gesamtKm / reiseroute.length;
  double gesamtZeit = zeitMax + zeitPeter + zeitAnna + zeitLena;
  double durchFahr = gesamtZeit / reiseroute.length;

  //Ausgabe der Ergebnisse
  print("Deine Reiseroute bei $geschwindigkeit km/h:");
  print("1. Max: ${reiseroute["Max"]} km, Zeit: ${zeitMax} Stunden");
  print(
      "2. Peter: ${reiseroute["Peter"]} km, Zeit: ${zeitPeter.toStringAsFixed(2)} Stunden");
  print(
      "3. Anna: ${reiseroute["Anna"]} km, Zeit: ${zeitAnna.toStringAsFixed(2)} Stunden");
  print("4. Lena ${reiseroute["Lena"]} km, Zeit: ${zeitLena.toStringAsFixed(2)} Stunden");    
  print("Gesamtdistanz: $gesamtKm km");
  print("durchschnittliche Entfernung: $durchEnt km");
  print("Gesamtfahrzeit: ${gesamtZeit.toStringAsFixed(2)} Stunden");
  print("durchschnittliche Fahrtzeit: ${durchFahr.toStringAsFixed(2)} Stunden");
}
