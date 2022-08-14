import 'package:flutter/material.dart';

class RoomFormWidget extends StatefulWidget {
  const RoomFormWidget({Key? key}) : super(key: key);

  @override
  State<RoomFormWidget> createState() => _RoomFormWidgetState();
}

class _RoomFormWidgetState extends State<RoomFormWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<String> rooms = ['Node js', 'Flutter', 'Python', 'C#'];

  final double w = 500;
  final double h = 350;

  @override
  Widget build(BuildContext context) {
    

    return Card(
      elevation: 8,
      child: Container(
        constraints: BoxConstraints(
          minWidth: w * .8,
          maxWidth: w,
          minHeight: h * .8,
          maxHeight: h
        ),
        
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
       
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(4),
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '{DevRooms}',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                fillColor: Colors.white,
                hintText: 'john doe',
              ),
            ),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                fillColor: Colors.white,
                hintText: 'Select Room',
              ),
              items: rooms.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (val) {},
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
                onPressed: () {},
                child: Text(
                  'Join Room',
                  style: Theme.of(context).textTheme.headline6,
                ))
          ],
        ),
      ),
    );
  }
}
