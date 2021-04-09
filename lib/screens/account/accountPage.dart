import 'package:flutter/material.dart';

import '../../components/account/SelectCards.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageTitle = 'Account Page';

    return Scaffold(
      appBar: AppBar(
        title: Text('Account Page'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(myChoices.length, (index) {
          return Center(
            child: SelectedCards(choice: myChoices[index]),
          );
        }),
      ),
    );
  }
}

