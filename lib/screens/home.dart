import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var Width = screenSize.width;
    var Height = screenSize.height;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 10),
        body: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(
              //   width: Width * 0.08,
              // ),
              SizedBox(
                width: 170,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    //add route to profile
                  },
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/dProfile.jpg"),
                      ),
                      Text(
                        "My Profile",
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          color: Color.fromRGBO(187, 187, 187, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {},
                  child: const SizedBox(
                    height: 40,
                    width: 15,
                    child: Image(
                      image: AssetImage("assets/images/notifProfile.png"),
                    ),
                  ))
            ],
          )
        ]));
  }
}
