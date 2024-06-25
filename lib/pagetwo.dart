import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

enum SingingCharacter { Thai, English, Chinese }

class _PageTwoState extends State<PageTwo> {
  int? _value;
  final List<String> _choices = ['Computer Science', 'Mathematics'];
  SingingCharacter? _character;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 1, 11, 159);
      }
      return const Color.fromARGB(255, 247, 247, 247);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Major",
              style: TextStyle(
                  color: const Color.fromARGB(255, 3, 83, 149),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  _choices.length,
                  (int index) {
                    return ChoiceChip(
                      label: Text(_choices[index]),
                      labelStyle: TextStyle(
                        color: _value == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      selected: _value == index,
                      selectedColor: Color.fromARGB(255, 2, 109, 196),
                      backgroundColor: Color.fromARGB(255, 206, 207, 252),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: _value == index
                              ? Color.fromARGB(255, 0, 13, 152)
                              : Colors.grey,
                        ),
                      ),
                      selectedShadowColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Language",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: const Text(
                'Thai',
                style: TextStyle(fontSize: 16),
              ),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Thai,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: Color.fromARGB(255, 1, 11, 159),
              ),
            ),
            ListTile(
              title: const Text(
                'English',
                style: TextStyle(fontSize: 16),
              ),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: Color.fromARGB(255, 1, 11, 159),
              ),
            ),
            ListTile(
              title: const Text(
                'Chinese',
                style: TextStyle(fontSize: 16),
              ),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Chinese,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                activeColor: Color.fromARGB(255, 1, 11, 159),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                SizedBox(width: 8), // เพิ่มช่องว่างระหว่าง Checkbox และข้อความ
                Text(
                  'Agree Condition Terms',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 0, 72, 131), // สีพื้นหลังของปุ่ม
                  foregroundColor: Colors.white,
                  shadowColor: Colors.blueAccent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                ),
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Press to Confirm Registration",
              style: TextStyle(fontSize: 12, color: Colors.purple),
            )),
          ],
        ),
      ),
    );
  }
}
