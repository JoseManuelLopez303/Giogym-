import 'package:flutter/material.dart';

class InputData extends StatelessWidget {
  final String hint;
  final IconData icono;
  final TextInputType tipoInput;
  final bool oscuro;
  final TextEditingController controller;

  const InputData(
    this.hint,
    this.icono,
    this.tipoInput,
    this.oscuro,
    this.controller,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: 60,
          child: TextField(
            controller: controller,
            obscureText: oscuro,
            keyboardType: tipoInput,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(14),
              prefixIcon: Icon(icono),
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
