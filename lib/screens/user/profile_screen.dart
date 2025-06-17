import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Datos del usuario")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                initialValue: "José Antonio",
                decoration: InputDecoration(
                  hintText: "Nombres",
                  labelText: "Nombres",
                  helperText: "Nombres del usuario",
                  suffixIcon: Icon(Icons.switch_account_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El nombre es obligatorio";
                  }
                  return value.length < 2 ? "No hay datos" : null;
                },
                onChanged: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
