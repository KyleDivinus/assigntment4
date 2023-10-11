import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String myBio = '''
My name is Kyle Divinus M. Casing, and I hail from the charming and vibrant barangay of Luna in the picturesque town of Natavidad, Pangasinan. I am 21 years old, and I've got a zest for life that keeps me on my toes. There's so much that defines me, and I'd love to share a glimpse of it with you.

One of my greatest passions is fitness. I'm a dedicated gym enthusiast, and you'll often find me pumping iron, pushing my physical limits, and striving to be the best version of myself. It's not just about the exercise; it's a way of life that teaches me discipline and determination.

But that's not all I'm about. When I'm not in the gym, I'm likely in front of a gaming console, immersing myself in virtual worlds. Video games have been a source of entertainment and escape for me, allowing me to explore different realms and challenge my problem-solving skills.

Another one of my favorite pastimes is settling down with a bucket of popcorn and watching a good movie or getting lost in the captivating narratives of anime. The world of cinema, with its diverse genres and captivating storytelling, is my gateway to relaxation and imagination.

Beyond the screen and gaming console, I have a deep love for sports, particularly basketball. I enjoy shooting hoops with friends and relishing the exhilarating moments on the court. The camaraderie and teamwork inherent in basketball resonate with me.

My family is incredibly important to me. I am the proud sibling to three wonderful brothers and sisters – one boy and two girls. They are my source of inspiration and support, and our bond is unbreakable. We've shared countless memories and are always there for each other through thick and thin.

One thing that fuels my daily grind is my unwavering love for coffee. The aroma of freshly brewed coffee is the perfect kickstart to my day. I savor the different flavors and styles of coffee, from cappuccinos to espressos, and I find comfort in a warm cup of joe.

My love for food is no less passionate. I consider myself a foodie who enjoys exploring various cuisines, whether it's savoring local delicacies or trying out international dishes. The culinary world fascinates me, and I'm always ready to embark on a gastronomic adventure.

My affection extends beyond the culinary world to the animal kingdom. I'm an avid dog lover and cherish the loyal companionship of our canine friends. Yet, I'm not exclusive in my affection – I also have a soft spot for cats. Their mysterious and independent nature captivates me.

In terms of education, I started my academic journey at The Kings Academy for my preschool years. During my elementary school years, I attended St. Patrick, and for high school, I was part of Tayug National High School. Currently, I'm pursuing my college education at Pangasinan State University.

Lastly, the NBA is a league I follow with immense interest. From the thrilling games to the incredible talents on display, I'm a dedicated fan. Whether it's rooting for a favorite team or marveling at a slam dunk, the NBA is a source of excitement and inspiration for me.

So, that's me in a nutshell – a fitness enthusiast, a gamer, a movie and anime aficionado, a basketball lover, a sibling, a coffee and food enthusiast, a dog and cat lover, and an NBA fanatic. Life is an incredible journey, and I embrace it with enthusiasm and a heart full of passion.
''';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showDescription = false; // Flag to control visibility of description

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bio'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Set your background image here
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Circular image
              ClipOval(
                child: Image.asset(
                  'assets/images/kaloy.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              // "View My Bio" button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showDescription = !showDescription;
                  });
                },
                child: Text('View My Bio!'),
              ),
              SizedBox(height: 20),
              // Description (conditionally shown)
              if (showDescription)
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      myBio, // Display the bio here
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
