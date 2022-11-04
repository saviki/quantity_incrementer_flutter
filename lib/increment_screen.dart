import 'package:flutter/material.dart';

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({Key? key}) : super(key: key);

  @override
  State<IncrementScreen> createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {

  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quantity Incrementer'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(quantity.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    quantity += 1;
                  });
                }, icon: const Icon(Icons.add)),
                const Text('quantity'),
                IconButton(onPressed: (){
                  setState(() {
                    quantity -= 1;
                  });
                }, icon: const Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
