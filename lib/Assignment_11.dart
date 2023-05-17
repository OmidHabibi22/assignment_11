import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Splash(),
    )
  );
}
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Image(image: NetworkImage("https://thesudercompany.com/wp-content/uploads/2020/01/brian-suder-guide-to-hollywood.jpg"),
                fit: BoxFit.cover,
                width: 400,
                height: 390,
              ),
            ),
          ),
          Text("<<TOP 10 FILMS of 2023>>",style: TextStyle(
            fontSize: 55,color: Colors.brown[700]
          ),)
        ],
      )
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors .brown[700],
        title: Text("FILMS TO WATCH"),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
                child: ListTile(
                  title: Text("Share The App"),
                  leading: Icon(Icons.share),
                )
            ),
            PopupMenuItem(
                child: ListTile(
                  title: Text("About Au"),
                  leading: Icon(Icons.info),
                )
            ),
            PopupMenuItem(
                child: ListTile(
                  title: Text("Exit"),
                  leading: Icon(Icons.exit_to_app_outlined),
                )
            ),
          ])
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("The Northman",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105903456/750/562/image.jpg"),),
            subtitle: Text("Action and adventure",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  firstFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Aftersun",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105894567/750/562/image.jpg"), fit: BoxFit.cover,),
            subtitle: Text("Drama Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SecondFilm(test: 2323,)));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Living",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105856829/750/562/image.jpg"),),
            subtitle: Text("Drama Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ThirdFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("All Quiet on the...",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105930930/750/562/image.jpg"),),
            subtitle: Text("Action and adventure Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  forthFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Turning Red",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105869865/750/562/image.jpg"),),
            subtitle: Text("Animation Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  FifthFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("The Woman King",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105930120/750/562/image.jpg"),),
            subtitle: Text("Action Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  sixthFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Fire of Love",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105853285/750/562/image.jpg"),),
            subtitle: Text("Documentaries",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  seventhFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("RRR",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105903326/750/562/image.jpg"),),
            subtitle: Text("Comedy Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  eighthFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Top Gun: Maverick",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105891352/750/562/image.jpg"),),
            subtitle: Text("Action and adventure",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  ninthFilm()));
            },
          ),
          Divider(color: Colors.brown,height: 5,thickness: 4),
          ListTile(
            title: Text("Everything Every...",style: TextStyle(fontSize: 30),),
            leading: Image(image: NetworkImage("https://media.timeout.com/images/105853469/750/562/image.jpg"),),
            subtitle: Text("Science fiction Film",style: TextStyle(fontSize: 20),),
            trailing: Icon(Icons.forward),
            selected: true,
            splashColor: Colors.brown,
            selectedTileColor: Colors.lime,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  tenthFilm()));
            },
          ),
        ],
      ),
    );
  }
}
class firstFilm extends StatelessWidget {
  const firstFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("1.The Northman"),
      ),
      body:Column(
        children: [
         Padding(
           padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
           child: Container(
             color: Colors.white,
             width: 400,
             height: 250,
             child: Image(image: NetworkImage("https://media.timeout.com/images/105903456/750/562/image.jpg"),
             fit: BoxFit.cover,
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
            child: Container(
              color: Colors.grey,
              width: 400,
              height:390,
              child: Text("A widescreen rallying cry for cinema in the age of streaming’. So read Time Out’s admittedly fairly breathless appraisal of Robert Eggers’ brilliant, blood-soaked Viking epic when it landed in (smashed into? Ransacked?) cinemas in April. But the sentiment stands, because in an age increasingly dominated by streaming sites, The Northman is a useful reminder that the place to witness the grandest, boldest cinematic visions is on the biggest screen possible – and unless you live in an IMAX, that won’t be in your front room.",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )
    );
  }
}

class SecondFilm extends StatelessWidget {
  SecondFilm({Key? key,required this.test}) : super(key: key);

  var test;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("2. Aftersun"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105894567/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.orangeAccent,
                width: 400,
                height:390,
                child: Text("Scottish filmmaker Charlotte Wells announced herself as a major talent with this sun-washed and achingly poignant drama about a divorced dad (Paul Mescal) and his young daughter (the effortlessly cool Francesca Corio) navigating the highs and lows of an eventful Turkish seaside holiday. All framed in flashback, Wells mixes up the visual aesthetic to communicate the way gauzy, long-ago memories can sink into your bones. The past is a foreign country, as another coming-of-age classic, The Go-Between, once noted. Aftersun was a gorgeous passport that took us there and left us richer, if more tear-stained, for the experience",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class ThirdFilm extends StatelessWidget {
  const ThirdFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text("3. Living"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105856829/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.lime[400],
                width: 400,
                height:390,
                child: Text("Some movie do-overs feel entirely superfluous (see: just about any Hollywood remake of a Scandi thriller), but others just make perfect sense. So it is with this sublime reimagining of Akira Kurosawa’s 1952 masterpiece Ikiru, in which Bill Nighy’s terminally ill civil servant rages, very politely, against the dying of the light, with some help from Sex Education’s Aimee Lou Wood as his life-positive underling. Nighy has never been better, delivering a remarkable turn that should, in a fair world, be rewarded with Oscars. Props, too, to South African director Oliver Hermanus, who has an instinctive grasp of stuffy English internality, and screenwriter Kazuo Ishiguro, who rivals his work on ‘Remains of the Day’ with a moving, deeply humane script.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class forthFilm extends StatelessWidget {
  const forthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("All Quiet on the Western Front"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105930930/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.teal[800],
                width: 400,
                height:390,
                child: Text("Seen 1917? Brace yourself for 1918. Netflix’s often awe-striking German-language reimagining of Erich Maria Remarque’s classic antiwar novel takes place in the dying embers of the Great War. And ‘dying’ is the operative word, because this vision of conflict is as violent a film as you’ll see this year – a cacophony of screaming shells, rumbling tanks and the rat-a-tat of flying bullets. In the middle of it all is a young German conscript (talented newcomer Felix Kammerer) just trying to stay alive. It’ll leave you dazed.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class FifthFilm extends StatelessWidget {
  const FifthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("5. Turning Red"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105869865/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.purpleAccent,
                width: 400,
                height:390,
                child: Text("Awkwardly, no Pixar film had been solo directed by a female filmmaker until Chinese-Canadian filmmaker Domee Shi came along with this cute-as-buttons creature feature about a 13-year-old girl who turns into a red panda when big emotions come knocking. It’s based on her own childhood – okay, not the panda part – and comes freighted with the authentic growing pains of adolescence. The only pity is that it went straight to Disney+, because its surprisingly Godzilla-esque climax would have looked epic on the big screen.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class sixthFilm extends StatelessWidget {
  const sixthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("6. The Woman King"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105930120/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.green[700],
                width: 400,
                height:390,
                child: Text("A historic action epic about Black women, The Woman King is as entertaining as it is culturally significant. It's immense fun watching Viola Davis and her Amazonian warriors train up and fight the bad guys in 1800s Africa, and it’s moving when you realise how groundbreaking and empowering this is. Already a big hit in America, it’s proving that Black female stories can smash it at the box office. Bring hankies for this emotional epic in the vein of Braveheart and Gladiator.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class seventhFilm extends StatelessWidget {
  const seventhFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("7. Fire of Love"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105853285/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.brown[800],
                width: 400,
                height:390,
                child: Text("This elemental, awe-inspiring doc follows two volcanologists –Maurice and Katia Krafft – to the ends of the earth and witness their passion: for this molten geological marvels and, even more movingly, for each other. It’s narrated by indie doyenne Miranda July and was a Sundance breakout hit at the beginning of the year, but it feels like one of pieces of non-fiction filmmaking that will stand the test of time. It shows us the kind of spectacular fiery abyss that most blockbusters can only dream of – and not a drop of CGI in sight.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class eighthFilm extends StatelessWidget {
  const eighthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("8. RRR"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105903326/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.brown[500],
                width: 400,
                height:390,
                child: Text("There’s a reason Telugu director SS Rajamouli sits so high on our list of the 50 coolest filmmakers in the world: his OTT epics are just absurdly fun. And this year’s RRR, the third highest-grossing Indian film ever, could be the most fun of them all. The ‘Rs’ stand for ‘rise, roar and revolt’, themes that play out in a Raj-era storyline about British colonialism and an abducted child that occasionally pokes through all the insane fight scenes, razzed-up dance routines, exploding trains and tigers (there are a lot of tigers). It’s the perfect gateway drug to the highs of Telugu action cinema.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class ninthFilm extends StatelessWidget {
  const ninthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text("9. Top Gun: Maverick"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105891352/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.blue,
                width: double.infinity ,
                height:390,
                child: Text("Okay, hands up who saw this practically flawless blockbuster coming? A few people probably did – this long-in-the-making Top Gun sequel was originally due out two years ago – but that enforced delay detracts not one iota from the purest widescreen thrill ride of the year so far. Tom Cruise’s ace pilot provides heart, soul and some fighter jet manoeuvres that we’re pretty sure defy every law of physics in the book. Mind you, the book gets binned early (and literally) in this one, to reinvent the so-called ‘legacy sequel’ into something that soars way above hollow Hollywood cash-ins.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class tenthFilm extends StatelessWidget {
  const tenthFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: Text("10. Everything Everywhere All at Once"),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Container(
                color: Colors.white,
                width: 400,
                height: 250,
                child: Image(image: NetworkImage("https://media.timeout.com/images/105853469/750/562/image.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0, 0, 0),
              child: Container(
                color: Colors.purple[700],
                width: 400,
                height:390,
                child: Text("Okay, hands up who saw this practically flawless blockbuster coming? A few people probably did – this long-in-the-making Top Gun sequel was originally due out two years ago – but that enforced delay detracts not one iota from the purest widescreen thrill ride of the year so far. Tom Cruise’s ace pilot provides heart, soul and some fighter jet manoeuvres that we’re pretty sure defy every law of physics in the book. Mind you, the book gets binned early (and literally) in this one, to reinvent the so-called ‘legacy sequel’ into something that soars way above hollow Hollywood cash-ins.",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        )
    );
  }
}

class SharePage extends StatelessWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Share The App"),
      ),
    );
  }
}
