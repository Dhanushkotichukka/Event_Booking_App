import 'package:flutter/material.dart';
import 'book_ticket.dart';

class ProductDetailPage extends StatefulWidget {
  final String cname;
  final String imgurl1;
  final String imgurl2;
  final String imgurl3;
  final int price;
  final String description;
  const ProductDetailPage({
    super.key,
    required this.cname,
    required this.imgurl1,
    required this.imgurl2,
    required this.imgurl3,
    required this.price,
    required this.description,
  });
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isCalendarAdded = false;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _venueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          widget.cname,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(widget.imgurl1),
                            height: 300,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 4),
                          Image(
                            image: AssetImage(widget.imgurl2),
                            height: 300,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 4),
                          Image(
                            image: AssetImage(widget.imgurl3),
                            height: 300,
                            width: 500,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Column(
                              children: [
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: Icon(Icons.share, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.redAccent),
                    SizedBox(width: 4),
                    Text(
                      'High Popular',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 6),
                    Text('- 99+ orders in the last 1 month'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.star, color: Colors.green, size: 18),
                      Text(
                        ' Good -${widget.price + 7644} rating',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.arrow_downward, size: 24, color: Colors.green),
                      Text(
                        ' % ${((widget.price / 10000) * 100).toInt()}',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        '${((widget.price - (widget.price / 10000)) * 5).toInt()}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 7),
                      Icon(Icons.currency_rupee, size: 18),
                      Text(
                        '${widget.price} per hour',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Event summary',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('${widget.description}.'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Booking confirmation.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Date: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _dateController,
                            decoration: InputDecoration(
                              hintText: "Enter date",
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          "Time: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _timeController,
                            decoration: InputDecoration(
                              hintText: "Enter time",
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Venue: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _venueController,
                            maxLines: 2,
                            decoration: InputDecoration(
                              hintText:
                                  "Enter your location and event details to find nearby venues and proceed with booking your ticket.",
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Terms and conditions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '1. Booking & Payment: Bookings are subject to availability and confirmation. A deposit is required to secure the booking.\n2. Event Responsibilities: Ensure compliance with laws and Hall rules.\n3. Cancellation & Refund: Cancellations must be in writing. Refunds are subject to the cancellation policy.\n4. Liability & Insurance: You are liable for damages and injuries. Consider event insurance.\n5. User Conduct: Ensure the event doesnt disturb neighbors or violate noise ordinances.\n6. Intellectual Property: Grant the Hall the right to use event images for promotion.\n7. Dispute Resolution: Disputes will be resolved through negotiation or courts in Andhra Pradesh.\n8. Privacy & Data Protection: Data handled as per our Privacy Policy.\n',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    isCalendarAdded = true;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Event added to calendar!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text(
                  isCalendarAdded ? 'Added to Calendar' : 'Add to Calendar',
                  style: TextStyle(
                    color: isCalendarAdded ? Colors.green : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookingScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text('Book Ticket'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
