import 'package:flutter/material.dart';

class bgimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("https://images.unsplash.com/photo-1657033429723-e46501bd068b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8aVVJc25WdGpCMFl8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.5),
                    colorBlendMode: BlendMode.darken,
                    );
  }
}