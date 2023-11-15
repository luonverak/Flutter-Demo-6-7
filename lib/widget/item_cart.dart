import 'package:flutter/material.dart';

import '../model/option_data.dart';

Widget itemCart(OptionData optionData) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(optionData.icon),
      ),
      title: Text(optionData.title),
      subtitle: Text(optionData.subtitle),
    ),
  );
}
