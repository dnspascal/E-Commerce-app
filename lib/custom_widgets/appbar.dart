import'package:flutter/material.dart';
class AppBarCustamizable extends StatelessWidget {
  const AppBarCustamizable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
          leading: Image.asset("assets/icons/drawable-hdpi/menubutton.png"),
          title: const Text(
            "HOT",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
          ),
          centerTitle: true,
        //toolbarHeight: 100,
          backgroundColor: Colors.black,
          actions: const [Icon(Icons.search)],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 30,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[900]),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )))),
                        child: const Text(
                          "ALL",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )))),
                        child: const Text(
                          "TRENDING",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromHeight(5)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )))),
                        child: const Text(
                          "NEW",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )))),
                        child: const Text(
                          "TRENDING",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(
                                const Size.fromWidth(90)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )))),
                        child: const Text(
                          "TRENDING",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
    
  }
}