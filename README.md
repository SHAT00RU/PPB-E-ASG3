My First Flutter App

A simple Flutter application that displays an image from the internet, a question text, and three selectable categories represented by icons.

This project demonstrates the basic usage of Flutter layout widgets such as Scaffold, AppBar, Container, Column, Row, Image, Icon, and Text.

Preview

The application interface contains:

An AppBar with the title

An image loaded from the internet

A text question

Three icon categories:

Food

Scenery

People

Layout structure:

AppBar
---------------------

[ Image ]

What image is that?

Food      Scenery      People
(icon)     (icon)       (icon)
Project Structure
lib/
 └── main.dart

All application code is written inside main.dart.

Widgets Explanation
main()
void main() {
  runApp(MyApp());
}

This is the entry point of the Flutter application.

runApp() starts the Flutter app and loads the root widget MyApp.

MyApp Widget
class MyApp extends StatelessWidget

MyApp is a StatelessWidget which means the UI does not change dynamically.

It returns a MaterialApp widget.

MaterialApp
MaterialApp(
  debugShowCheckedModeBanner: true,
  home: HomePage(),
)

MaterialApp provides the basic structure for a Material Design application.

Properties used:

Property	Description
debugShowCheckedModeBanner	Shows DEBUG banner
home	The first page of the application
HomePage Widget
class HomePage extends StatelessWidget

HomePage is the main screen of the application.

Scaffold
Scaffold(
  backgroundColor: Colors.grey[200]
)

Scaffold provides the main layout structure of the page.

It typically contains:

AppBar

Body

Floating buttons

Navigation drawers

AppBar
AppBar(
  title: Text("My first app"),
  backgroundColor: Color(0xFFE9CC7A),
  centerTitle: true,
)

The AppBar displays the title at the top of the application.

Property	Function
title	Displays the title text
backgroundColor	Sets the AppBar color
centerTitle	Centers the title
Padding
Padding(
  padding: EdgeInsets.all(16)
)

Padding adds spacing between the screen edge and the content.

EdgeInsets.all(16) means 16 pixels on all sides.

Column
Column(
  children: []
)

Column arranges widgets vertically from top to bottom.

Container

Example:

Container(
  padding: EdgeInsets.all(20),
  color: Color(0xFFAED6DB),
)

Container is a flexible widget used for:

Adding padding

Setting background color

Wrapping other widgets

Image.network
Image.network(
  "https://picsum.photos/400",
  height: 200,
  width: double.infinity,
  fit: BoxFit.cover,
)

Displays an image from the internet.

Property	Function
height	Image height
width	Image width
fit	How the image fills its container

BoxFit.cover makes the image fill the container proportionally.

SizedBox
SizedBox(height: 20)

Used to create vertical space between widgets.

Text
Text(
  "What image is that?",
  style: TextStyle(fontSize: 16)
)

Displays text on the screen.

TextStyle controls text appearance such as font size.

Row
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly
)

Row arranges widgets horizontally.

spaceEvenly distributes space evenly between elements.

Icon

Example:

Icon(Icons.restaurant)

Displays icons from the Material Icons library.

Icons used in this app:

Icon	Meaning
Icons.restaurant	Food
Icons.landscape	Scenery
Icons.person	People
Category Layout

Each category is built using a Column containing an icon and text.

Example:

Column(
  children: [
    Icon(Icons.restaurant),
    Text("Food")
  ],
)

This places the icon above the label text.
