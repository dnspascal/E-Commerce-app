import 'package:eight_project/pages/homePage.dart';
import 'package:eight_project/providers/user_provider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final nameTextEditingController = TextEditingController();
  final mailTextEditingController = TextEditingController();
  final phoneTextEditingController = TextEditingController();
  final nameFocusNode = FocusNode();
  final mailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    UserProviders userProvider = Provider.of(context);
    return (Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("E-commerce app"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
              key: formKey,
              child: (Column(children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  radius: 50,backgroundColor: Colors.black
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  focusNode: nameFocusNode,
                  controller: nameTextEditingController,
                  decoration: const InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      hintText: "Enter your name",
                      labelText: "Name"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return " name is required";
                    }
                  },
                ),
                TextFormField(
                    textInputAction: TextInputAction.next,
                    focusNode: mailFocusNode,
                    controller: mailTextEditingController,
                    decoration: const InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: "Enter your Email",
                        labelText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " email is required";
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                          .hasMatch(value)) {
                        return "Invalid Email";
                      }
                    }),
                TextFormField(
                    textInputAction: TextInputAction.send,
                    focusNode: phoneFocusNode,
                    controller: phoneTextEditingController,
                    onEditingComplete: () {
                      if (formKey.currentState!.validate()) {
                        userProvider.login(
                          name: nameTextEditingController.text,
                          email: mailTextEditingController.text,
                          phone: phoneTextEditingController.text,
                        );
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HomePage()));
                      }
                    },
                    decoration: const InputDecoration(
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        hintText: "Enter you phone number",
                        labelText: "Phone number"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " phone is required";
                      }
                    }),
                Container(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            userProvider.login(
                              name: nameTextEditingController.text,
                              email: mailTextEditingController.text,
                              phone: phoneTextEditingController.text,
                            );
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomePage()));
                          }
                        },
                        child: const Text("SUBMIT")))
              ]))),
        ),
      ),
    ));
  }
}
