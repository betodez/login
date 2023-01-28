import 'package:flutter/material.dart';
import 'package:task/widgets/auth_background.dart';

import '../widgets/custom_TextForm.dart';

class ScrLogin extends StatelessWidget {
  const ScrLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                child: Column(children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const CustomTextFormField(
                    icon: Icons.email,
                    obscureText: false,
                    hintText: "Escriba su email",
                    labelText: "email",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormField(
                    icon: Icons.lock,
                    obscureText: true,
                    hintText: "Inserte su contraseña",
                    labelText: "Contraseña",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      ElevatedButton(onPressed: null, child: Text("Login")),
                      SizedBox(
                        width: 25,
                      ),
                      ElevatedButton(onPressed: null, child: Text("Registrar")),
                    ],
                  )
                ]),
              ))),
    );
  }
}
