import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_gpt/screens/chat_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<ConcentricModel> concentrics = [
    ConcentricModel(
      lottie: "https://assets4.lottiefiles.com/packages/lf20_J9aAUT.json",
      text: "Hello I am ChatGPT, a large language model trained by OpenAI.",
      image:
          "https://img.freepik.com/free-vector/cute-artificial-intelligence-robot-isometric-icon_1284-63045.jpg?w=740&t=st=1675790354~exp=1675790954~hmac=29f823ccf302c3826b56b49cc7cd005b58554196c3fe4ca77f9021b33157ed99",
    ),
    ConcentricModel(
        lottie: "https://assets4.lottiefiles.com/packages/lf20_J9aAUT.json",
        text:
            "I can answer, generate texts and assist with various task. I am work in progress, so please be patient with me",
        image:
            "https://img.freepik.com/free-photo/robot-doing-peace-sign_1048-3527.jpg?w=740&t=st=1675790953~exp=1675791553~hmac=ffb0d5a5de525b1eabd163f7a47bf3b5f0e429d587d2c1176dea6da02209c525"),
    ConcentricModel(
        lottie: "https://assets4.lottiefiles.com/packages/lf20_J9aAUT.json",
        text:
            "To Use ChatGPT, you can simply ask it a question or give it a prompt and it will generate a response",
        image:
            "https://img.freepik.com/free-vector/android-concept-illustration_114360-7680.jpg?w=740&t=st=1675791000~exp=1675791600~hmac=399cfe9d114625bea3319d24a1631b724d999c14aac9a1f4e5d028367d1d930e"),
    ConcentricModel(
        lottie: "https://assets4.lottiefiles.com/packages/lf20_J9aAUT.json",
        text:
            "To get access a ChatGPT API, you can signup on beta.openai.com by creating an account. Once you have an API key, you can use it to access the API and Start using ChatGPT",
        image:
            "https://img.freepik.com/free-vector/cute-bot-say-users-hello-chatbot-greets-online-consultation_80328-195.jpg?w=740&t=st=1675791036~exp=1675791636~hmac=431d1ce7cea51a242016014ea945de7a9f249647b9b7d73ba4101eea51bd6f3a"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ConcentricPageView(
          itemCount: concentrics.length,
          colors: const <Color>[
            Color.fromARGB(255, 249, 153, 198),
            Colors.white,
            Color.fromARGB(189, 244, 114, 240),
            Color(0xff013BCA),
          ],
          itemBuilder: (index) {
            return Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                      child: Text(
                        index == 3 ? "Let's Start" : "Skip",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: index == 1 ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Center(
                  child: Container(
                    height: 290,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(
                          image: NetworkImage(concentrics[index].image!),
                          fit: BoxFit.fill,
                        )),

                    // child: Image.network(concentrics[index].image!),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    concentrics[index].text!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: index == 1 ? Colors.black : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ConcentricModel {
  String? lottie;
  String? text;
  String? image;

  ConcentricModel({this.lottie, this.text, this.image});
}
