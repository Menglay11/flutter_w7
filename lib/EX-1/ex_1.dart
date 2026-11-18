import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            children: [
              SelectableButton(),
              SizedBox(height: 10),
              SelectableButton(),
              SizedBox(height: 10),
              SelectableButton(),
              SizedBox(height: 10),
              SelectableButton(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ),
  ),
);

class SelectableButton extends StatefulWidget {
  const new({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => {
          setState(() {
            isSelected = !isSelected;
          }),
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.blue.shade50,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Text(isSelected ? 'Selected' : 'Not selected'),
      ),
    );
  }
}
