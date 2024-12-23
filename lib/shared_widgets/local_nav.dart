import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalNavigation extends StatefulWidget {
  final List<String>? menuItems;
  final List<Widget>? widgetOptions;
  final double? elevationValue;

  const LocalNavigation({
    super.key,
    this.menuItems,
    this.widgetOptions,
    this.elevationValue,
  });

  @override
  State<LocalNavigation> createState() => _LocalNavigationState();
}

class _LocalNavigationState extends State<LocalNavigation> {
  late bool _isSelected;
  late int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: widget.elevationValue ?? 0,
          color: Colors.transparent,
          child: Container(
            height: 60,
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: widget.menuItems!.length,
              itemBuilder: (BuildContext context, int index) {
                String menu = widget.menuItems![index];
                _isSelected = _currentIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: _isSelected
                            ? const BorderSide(
                                color: Colors.orangeAccent, width: 2.0)
                            : const BorderSide(
                                color: Colors.transparent,
                              ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        menu,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: _isSelected
                                    ? FontWeight.bold
                                    : FontWeight.w700,
                                fontSize: _isSelected ? 18 : 16,
                                color: _isSelected
                                    ? Colors.orangeAccent
                                    : Colors.black)),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: widget.widgetOptions!.elementAt(_currentIndex),
        ),
      ],
    );
  }
}
