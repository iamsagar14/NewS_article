import 'package:assignment/pages/newList.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NewsList(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'We Show News For you',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black12,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text('Skip'),
                onPressed: () => Navigator.pushReplacement(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => NewsList(),
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
