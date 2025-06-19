import 'package:flutter/material.dart';
import 'package:electrosmart/themes/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos del usuario"),
        backgroundColor: AppTheme.azul700,
      ),
      backgroundColor: AppTheme.azul50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: AppTheme.azul950,
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              TextFormField(
                initialValue: "José Antonio",
                decoration: InputDecoration(
                  hintText: "Nombres",
                  labelText: "Nombres",
                  helperText: "Nombres del usuario",
                  suffixIcon: const Icon(
                    Icons.switch_account_outlined,
                    color: AppTheme.azul700,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El nombre es obligatorio";
                  }
                  return value.length < 2 ? "No hay datos" : null;
                },
                onChanged: (value) {
                  // lógica de guardado
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
