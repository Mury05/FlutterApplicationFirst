# 📌 Liste des Widgets Flutter avec Exemples

## 📝 1. Widgets de Base

### 1.1 `Text`
Affiche du texte à l’écran.

```dart
Text(
  "Hello, Flutter!",
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
)
```
### 1.2 `Image`
Affiche une image depuis le réseau ou les assets.

```dart
Image.network("https://via.placeholder.com/150")
```


### 1.3 `Icon`
Affiche une icône.

```dart
Icon(Icons.home, size: 30, color: Colors.blue)
```

### 1.4 `Container`
Un conteneur personnalisable.
```dart
Container(
  width: 100,
  height: 100,
  color: Colors.red,
  child: Center(child: Text("Box")),
)
```

## 📐 2. Widgets de Mise en Page

### 2.1 `Column`
Organise les widgets en colonne.

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Ligne 1"),
    Text("Ligne 2"),
  ],
)
```
### 2.2 `Row`
Organise les widgets en ligne.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.star),
    Icon(Icons.favorite),
  ],
)
```


### 2.3 `Stack`
Superpose les widgets.

```dart
Stack(
  children: [
    Container(width: 100, height: 100, color: Colors.blue),
    Positioned(top: 10, left: 10, child: Icon(Icons.star, color: Colors.white))
  ],
)
```

### 2.4 `SizedBox`
Ajoute un espacement ou une boîte avec une taille fixe..

```dart
SizedBox(
  width: 10 // Ajoute un espace vertical de 20 pixels
)
```
### 2.5 `Expanded` 

Remplit l'espace disponible. Permet à un widget de prendre toute la place disponible.

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.green, height: 100)),
    Expanded(child: Container(color: Colors.orange, height: 100)),
  ],
)
```
### 2.6 `Flexible ` 

Ajuste dynamiquement la taille d'un widget. Permet d’adapter un widget à l’espace disponible.

```dart
Row(
  children: [
    Flexible(
      child: Container(color: Colors.blue, height: 100),
    ),
    Flexible(
      child: Container(color: Colors.red, height: 100),
    ),
  ],
)
```

## 🎮 3. Widgets Interactifs

### 3.1 `ElevatedButton`
Un bouton surélevé.

```dart
ElevatedButton(
  onPressed: () => print("Button Pressed"),
  child: Text("Cliquez-moi"),
)
```
### 3.2 `TextField`
Champ de saisie.

```dart
TextField(
  decoration: InputDecoration(labelText: "Entrez votre nom"),
)
```


### 3.3 `Checkbox`
Case à cocher

```dart
Checkbox(
  value: true,
  onChanged: (bool? newValue) {},
)
```

### 3.4 `Switch`
Bouton d'activation/désactivation.

```dart
Switch(
  value: false,
  onChanged: (bool newValue) {},
)
```

### 3.5 `Radio`
Bouton d'activation/désactivation.

```dart
int selectedOption = 1;

Column(
  children: [
    Radio(
      value: 1,
      groupValue: selectedOption,
      onChanged: (int? value) {},
    ),
    Radio(
      value: 2,
      groupValue: selectedOption,
      onChanged: (int? value) {},
    ),
  ],
)
```

### 3.6 `TextButton`
Un bouton textuel simple.

```dart
TextButton(
  onPressed: () => print("TextButton pressé"),
  child: Text("Cliquez ici"),
)
```
### 3.7 `OutlinedButton`
Un bouton avec une bordure.

```dart
OutlinedButton(
  onPressed: () => print("OutlinedButton pressé"),
  child: Text("Bouton avec bordure"),
)

```
### 3.8 `FloatingActionButton`
Un bouton flottant circulaire.

```dart
FloatingActionButton(
  onPressed: () => print("FAB pressé"),
  child: Icon(Icons.add),
)
```
### 3.9 `Slider`
Un curseur interactif.

```dart
double sliderValue = 50;

Slider(
  value: sliderValue,
  min: 0,
  max: 100,
  divisions: 10,
  label: sliderValue.round().toString(),
  onChanged: (double value) {},
)
```


## 📜 4. Listes et Tableaux

### 4.1 `ListView`
Affiche une liste déroulante.

```dart
ListView(
  children: [
    ListTile(title: Text("Élément 1")),
    ListTile(title: Text("Élément 2")),
  ],
)
```
### 4.2 `GridView`
Affiche des éléments sous forme de grille.

```dart
GridView.count(
  crossAxisCount: 2,
  children: [
    Container(color: Colors.blue, height: 50),
    Container(color: Colors.red, height: 50),
  ],
)
```
### 4.3 `Table`
Affiche des données sous forme de tableau.

```dart
Table(
  border: TableBorder.all(),
  children: [
    TableRow(children: [
      Text("Nom"),
      Text("Âge"),
    ]),
    TableRow(children: [
      Text("Odilone"),
      Text("25"),
    ]),
  ],
)
```
### 4.3 `TabBar`
Barre d'onglets

```dart
DefaultTabController(
  length: 2,
  child: Column(
    children: [
      TabBar(
        tabs: [
          Tab(text: "Onglet 1"),
          Tab(text: "Onglet 2"),
        ],
      ),
      Expanded(
        child: TabBarView(
          children: [
            Center(child: Text("Contenu Onglet 1")),
            Center(child: Text("Contenu Onglet 2")),
          ],
        ),
      ),
    ],
  ),
)

```


## 🔄 5 .Organisation et Navigation

### 5.1 `AppBar`
Barre d’application en haut de l’écran.

```dart
AppBar(title: Text("Mon Application"))
```
### 5.2 `Drawer`
Menu latéral.

```dart
Drawer(
  child: ListView(
    children: [ListTile(title: Text("Accueil"))],
  ),
)
```
### 5.3 `BottomNavigationBar`
Barre de navigation en bas.

```dart
BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
  ],
)
```
## ⏳ 6. Gestion d’État et Asynchronisme

### 6.1 `StatefulWidget`
Widget dynamique

```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Compteur : $count"),
        ElevatedButton(onPressed: () => setState(() => count++), child: Text("Incrementer"))
      ],
    );
  }
}
```
### 6.2 `FutureBuilder`
Affiche les données chargées de manière asynchrone.

```dart
FutureBuilder<String>(
  future: Future.delayed(Duration(seconds: 2), () => "Données chargées"),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else {
      return Text(snapshot.data ?? "Erreur");
    }
  },
)
```
### 6.3 `StreamBuilder`
Affiche les données issues d’un flux asynchrone.

```dart
Stream<int> numberStream = Stream.periodic(Duration(seconds: 1), (x) => x).take(10);

StreamBuilder<int>(
  stream: numberStream,
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    } else if (snapshot.hasError) {
      return Text("Erreur : ${snapshot.error}");
    } else {
      return Text("Valeur : ${snapshot.data}");
    }
  },
)
```

## 🎬 7. Animations

### 7.1 `AnimatedContainer`
Animation automatique des propriétés.

```dart
AnimatedContainer(
  duration: Duration(seconds: 1),
  width: 100,
  height: 100,
  color: Colors.blue,
)
```

## 🔎 8. Autres Widgets Utiles


### 8.3 `ClipRRect  ` 

Applique des bords arrondis.

```dart
ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.network("https://via.placeholder.com/150"),
)
```
### 8.4 `Hero  ` 

Animation de transition d'écran.

```dart
Hero(
  tag: "hero-image",
  child: Image.network("https://via.placeholder.com/150"),
)
```