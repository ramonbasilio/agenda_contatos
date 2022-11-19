import 'package:flutter/material.dart';

class formContato extends StatefulWidget {
  const formContato({Key? key}) : super(key: key);

  @override
  State<formContato> createState() => _formContatoState();
}

const double padding01 = 15.0;
final dropOpcoes = [
  'Familia',
  'Trabalho',
  'Faculdade',
  'Igreja',
  'Outros',
];

String dropdownValue = dropOpcoes.first;

class _formContatoState extends State<formContato> {
  TextEditingController nomeContato = TextEditingController();
  TextEditingController sobrenomeContato = TextEditingController();
  TextEditingController celularContato = TextEditingController();
  TextEditingController emailContato = TextEditingController();
  TextEditingController aniversarioContato = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Criar um novo contato'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  print('Apertou o botao');
                },
                child: Text('Salvar'),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          child: Image.asset('img/add_foto.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text('Adicionar foto'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                              labelText: 'Tipo de contato',
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 20),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 1, color: Colors.black))),
                        hint: const Text('Tipo de contato'),
                        value: dropdownValue,
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(
                            () {
                              dropdownValue = value!;
                            },
                          );
                        },
                        items: dropOpcoes
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: nomeContato,
                        decoration: const InputDecoration(
                            labelText: 'Nome',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: sobrenomeContato,
                        decoration: const InputDecoration(
                            labelText: 'Sobrenome',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: celularContato,
                        decoration: const InputDecoration(
                            labelText: 'Celular',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: emailContato,
                        decoration: const InputDecoration(
                            labelText: 'E-mail',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'Aniversario',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'Rua',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'Numero',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'Bairro',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'Cidade',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(padding01),
                      child: TextFormField(
                        controller: aniversarioContato,
                        decoration: const InputDecoration(
                            labelText: 'CEP',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
