import 'package:flutter/material.dart';

class TaskCreatePage extends StatelessWidget {
  const TaskCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Task'),
      ),
      body: Container(
        // adionando em um container para dá um margin em todos os omponentes
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: 'Description'),
            ),
            Container(
              // o botton não se aploica width, então adiciona ele em um container para ocupar o espaço
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Voltar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
