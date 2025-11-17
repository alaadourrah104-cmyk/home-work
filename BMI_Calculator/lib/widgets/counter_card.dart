import 'package:flutter/material.dart';
import 'package:flutter3/widgets/custom_container.dart';
import 'package:flutter3/widgets/section_title.dart';
import 'package:flutter3/widgets/value_text.dart';

class CounterCard extends StatefulWidget {
  const CounterCard({
    super.key,
    required this.text,
    required this.defaultValue,
    required this.onChanged,
  });
  final String text;

  final int defaultValue;
  final Function(int) onChanged;

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultValue;
    }
    return CustomContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionTitle(text: widget.text),
          ValueText(text: value.toString()),
          Row(
            children: [
              CustomIconButton(
                icon: Icons.remove,
                onTap: () {
                  value--;
                  widget.onChanged(value);
                  setState(() {});
                },
              ),

              SizedBox(width: 40),
              CustomIconButton(
                icon: Icons.add,
                onTap: () {
                  value++;
                  widget.onChanged(value);
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xff4B4E5F),
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
