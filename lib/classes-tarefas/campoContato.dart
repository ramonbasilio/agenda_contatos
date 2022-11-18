import 'package:flutter/material.dart';

class campoContato extends StatefulWidget {
  final String? labelHint;
  final TextEditingController meuControlador;

  const campoContato({Key? key, required this.labelHint, required this.meuControlador}) : super(key: key);

  @override
  State<campoContato> createState() => _campoContatoState();
}

class _campoContatoState extends State<campoContato> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.meuControlador,
        decoration: InputDecoration(
            labelText: widget.labelHint,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(width: 1, color: Colors.black))),
      ),
    );
  }
}
