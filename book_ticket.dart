import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int ticketCount = 1;
  DateTime selectedDate = DateTime.now();
  String selectedEvent = 'Wedding';
  final List<String> events = [
    'Wedding',
    'Reception',
    'Birthday',
    'Sangeet',
    'Haldi',
    'Engagement',
  ];

  void _increaseTicket() {
    setState(() {
      ticketCount++;
    });
  }

  void _decreaseTicket() {
    if (ticketCount > 1) {
      setState(() {
        ticketCount--;
      });
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _bookNow() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => ConfirmationScreen(
              ticketCount: ticketCount,
              selectedDate: selectedDate,
              eventName: selectedEvent,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Event"), backgroundColor: Colors.purple),
      backgroundColor: Color(0xFFF9F5FF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Event Booking",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),

                // Event Dropdown
                Text("Select Event", style: TextStyle(fontSize: 18)),
                DropdownButton<String>(
                  value: selectedEvent,
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedEvent = newValue!;
                    });
                  },
                  items:
                      events.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                ),
                SizedBox(height: 20),

                // Ticket Count
                Text("Number of Tickets", style: TextStyle(fontSize: 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: _decreaseTicket,
                    ),
                    Text('$ticketCount', style: TextStyle(fontSize: 20)),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: _increaseTicket,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Date Picker
                Text("Select Date", style: TextStyle(fontSize: 18)),
                TextButton.icon(
                  icon: Icon(Icons.calendar_today),
                  label: Text("${selectedDate.toLocal()}".split(' ')[0]),
                  onPressed: () => _selectDate(context),
                ),
                SizedBox(height: 30),

                // Book Now Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _bookNow,
                    icon: Icon(Icons.check_circle),
                    label: Text("Book Now"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[300],
                      padding: EdgeInsets.symmetric(vertical: 14),
                      textStyle: TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ConfirmationScreen extends StatelessWidget {
  final int ticketCount;
  final DateTime selectedDate;
  final String eventName;

  const ConfirmationScreen({
    super.key,
    required this.ticketCount,
    required this.selectedDate,
    required this.eventName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Confirmation"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.celebration, size: 80, color: Colors.purple),
              SizedBox(height: 20),
              Text(
                "Your booking is confirmed!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text("🎉 Event: $eventName"),
              Text("🎟 Tickets: $ticketCount"),
              Text(
                "📅 Date: ${selectedDate.toLocal().toString().split(' ')[0]}",
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.home),
                label: Text("Back to Booking"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[300],
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
