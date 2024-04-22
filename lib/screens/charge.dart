import 'package:flutter/material.dart';
import 'package:flutter_tdd/components/buttons.dart';

class Charge extends StatelessWidget {
  Charge({super.key});

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cobrar"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text("Quanto você quer cobrar?", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),),
                ),
                TextField(
                  controller: textController,
                  decoration: const InputDecoration(hintText: "R\$ 0.00"),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: PrimaryButton(text: "Continuar", onTap: (){}),
                      ),
                      SecondaryButton(text: "Cancelar", onTap: (){}),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
