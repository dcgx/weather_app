import 'package:flutter/material.dart';
import 'package:weather_app/view/home/widgets/search_text_field.dart';

class RequestError extends StatelessWidget {
  final String? error;
  const RequestError({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchTextField(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                this.error ?? "Error",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        )
      ],
    );
  }
}
