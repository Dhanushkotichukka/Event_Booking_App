import 'package:flutter/material.dart';
import 'product_details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Center(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "flutter",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "  Event Booking App",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.account_circle, color: Colors.white),
          SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for latest events',
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.mic_none_outlined),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Upcoming Events",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 6.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/q1.jpg'),
                        ),
                        SizedBox(height: 6),
                        Text("Wedding"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://img.staticmb.com/mbcontent/images/uploads/2023/6/Haldi-Decoration-COVER.jpg',
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("Haldi"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://image.wedmegood.com/resized/800X/uploads/images/1744ce9a72804f90808bad1b8e77720erealwedding/Komal&Rachit_Reception-1.jpg',
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("Sangeet"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://tse2.mm.bing.net/th?id=OIP.YS8eBW2QTg0nuKADBkzNDQHaE8&pid=Api&P=0&h=180',
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("Reception"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://tse2.mm.bing.net/th?id=OIP.mxec56sC2-19NaQrxf2-QwHaE7&pid=Api&P=0&h=180',
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("Birthday"),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://tse3.mm.bing.net/th?id=OIP.zGa441Ndufvh4JkdxepD1AHaHa&pid=Api&P=0&h=180',
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("Engagements"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "Top Events",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 205, 164, 237),
                ),
                height: 450,
                width: 500,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetailPage(
                                    cname: 'Reception',
                                    imgurl1: 'assets/cm4.jpg',
                                    imgurl2: 'assets/cm6.jpg',
                                    imgurl3: 'assets/cm5.jpg',
                                    price: 5769,
                                    description:
                                        'Start with online directories:Explore platforms like Justdial and WeddingWire.in. \nSearch by location:Use the search bar to find venues in specific areas or near your desired location. \n Filter by venue type:Select your preferred venue type, such as banquet halls, marriage gardens, or hotels.\n Check ratings and reviews:Look for reviews and ratings from previous clients to gauge the venues quality and service.\nContact event management companies:Many companies offer full-service wedding planning, including venue selection and coordination.\n Seating Plan & Table Arrangement\nChoose Table Types and Sizes: Select tables based on space and the number of guests you want to accommodate at each table. \nArrange RemainingFood and Beverage Service:\nPlan the Menu: Consider dietary needs, allergies, and preferences when creating the menu.\n',
                                  ),
                            ),
                          );
                        },

                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  'https://tse4.mm.bing.net/th?id=OIP.TPzghknQSoD7iwy6pbi7_QHaER&pid=Api&P=0&h=180',

                                  height: 100,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Wedding Mandap",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25.0,
                              ),
                              child: Row(
                                children: [
                                  Text("Rating: "),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetailPage(
                                    cname: 'Birthday',
                                    imgurl1: 'assets/bd7.jpg',
                                    imgurl2: 'assets/bd2.jpg',
                                    imgurl3: 'assets/bd8.jpg',
                                    price: 4364,
                                    description:
                                        'Banquet hotels and halls: Suitable for glamorous celebrations and larger groups.Restaurants and cafes: Good for intimate gatherings and dining. Farmhouses and resorts: Perfect for picnic-style parties and outdoor celebrations. Kids playgrounds and indoor game zones: Ideal for kids birthday parties. Bowling alleys and game arcades: Offer a fun and interactive experience. Private homes or apartments: Can be a more intimate and personalized option.',
                                  ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Image.asset(
                                  'assets/bg.jpg',

                                  height: 100,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),

                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text(
                                  "Birthdays",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25.0,
                              ),
                              child: Row(
                                children: [
                                  Text("Rating: "),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star_half_rounded,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetailPage(
                                    cname: 'sangeeth',
                                    imgurl1: 'assets/sd7.jpg',
                                    imgurl2: 'assets/sd8.jpg',
                                    imgurl3: 'assets/sd9.jpg',
                                    price: 7564,
                                    description:
                                        'Inspired by natures beauty, this Haldi setup features a rustic charm.Its an organic and warm aesthetic that feels both authentic and celebratory.SRMT Function Hall,Main Rd, Suryanarayana Puram, Kakinada, Andhra Pradesh 533001, India..When writing your description, consider the overall feeling you want to evoke and which elements are most prominent in the decoration.',
                                  ),
                            ),
                          );
                        },

                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Image.asset(
                                  'assets/q1.jpg',
                                  height: 100,
                                  width: 120,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sangeet",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25.0,
                              ),
                              child: Row(
                                children: [
                                  Text("Rating: "),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetailPage(
                                    cname: 'Haldi',
                                    imgurl1: 'assets/hd7.jpg',
                                    imgurl2: 'assets/hd8.jpg',
                                    imgurl3: 'assets/hd9.jpg',
                                    price: 4469,
                                    description:
                                        'For a sophisticated Haldi ceremony, our decor combines understated elegance with traditional charm.A whisper of gold and sunshine.Subbayya Grand Kakinada ,6-42, Nookalamma, D.no: 10, Temple St, Rama Rao Peta, Kakinada, Andhra Pradesh 533004, India.',
                                  ),
                            ),
                          );
                        },

                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Image.network(
                                  'https://tse1.mm.bing.net/th?id=OIP.FWbFDMhofCx6N2pjHUV6qAHaE7&pid=Api&P=0&h=180',

                                  height: 100,
                                  width: 120,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Haldi",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25.0,
                              ),
                              child: Row(
                                children: [
                                  Text("Rating: "),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 8),
              child: Text(
                "Birthday",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Birthday',
                                imgurl1: 'assets/bd1.jpg',
                                imgurl2: 'assets/bd2.jpg',
                                imgurl3: 'assets/bd3.jpg',
                                price: 4364,
                                description:
                                    'In Hyderabad, birthday functions can be held in various locations, including party halls, convention centers, farmhouses, villas, and even cafes or restaurants. Popular options include GVR Convention Centre, Jaya Gardens, and The Village Vibes for spacious settings. For smaller gatherings, cafes like Urban Nemo Garden Cafe offer open terraces.',
                              ),
                        ),
                      );
                    },

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/bd1.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Birthdays",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Special Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Birthday Dreams Brought to Life\n by our Royal Events",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Birthday',
                                imgurl1: 'assets/bd4.jpg',
                                imgurl2: 'assets/bd5.jpg',
                                imgurl3: 'assets/bd6.jpg',
                                price: 4364,
                                description:
                                    'Party Halls & Convention Centers:GVR Convention Centre: Located on Nagarjuna Sagar Road, Bongulur, its a popular choice for large events.Jaya Gardens: Situated on Raj Bhavan Road in Somajiguda, it offers a range of facilities.Sri Tara Convention: Found in Gandi Maisamma, its another option for events.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/bd6.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Birthdays",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Special Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Birthday Bash Begins Here \n Curated by Royal Events",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Birthday',
                                imgurl1: 'assets/bd7.jpg',
                                imgurl2: 'assets/bd8.jpg',
                                imgurl3: 'assets/bd9.jpg',
                                price: 4364,
                                description:
                                    'Banquet hotels and halls: Suitable for glamorous celebrations and larger groups.Restaurants and cafes: Good for intimate gatherings and dining. Farmhouses and resorts: Perfect for picnic-style parties and outdoor celebrations. Kids playgrounds and indoor game zones: Ideal for kids birthday parties. Bowling alleys and game arcades: Offer a fun and interactive experience. Private homes or apartments: Can be a more intimate and personalized option.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/bd9.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Birthdays",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Special Days • Anakapalli",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "From Balloons to Backdrops \n Every Detail Made Special!",
                                  style: TextStyle(fontSize: 14),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 8),
              child: Text(
                "Haldi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Haldi',
                                imgurl1: 'assets/hd1.jpg',
                                imgurl2: 'assets/hd2.jpg',
                                imgurl3: 'assets/hd3.jpg',
                                price: 5999,
                                description:
                                    'A burst of sunshine! Our Haldi decoration is a joyous explosion of bright yellows. Arrangements that bring a youthful and energetic vibe.\nVaaraahi Banquets and Conference Center, Level 3, SLN Terminus, Jayabheri Enclave, Gachibowli, Hyderabad, Telangana 500032, India.',
                              ),
                        ),
                      );
                    },

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/hd1.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Haldi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Celebrating Rituals with Style \n Designed for Your Forever!",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Haldi',
                                imgurl1: 'assets/hd4.jpg',
                                imgurl2: 'assets/hd5.jpg',
                                imgurl3: 'assets/hd6.jpg',
                                price: 5999,
                                description:
                                    'Get ready for a vibrant fiesta! This Haldi decor scheme is a kaleidoscope of bright colors.V Convention,Hitech City Rd, Siddhi Vinayak Nagar, Madhapur, Hyderabad, Telangana 500081, India.Overall vibe: Traditional, festive, elegant, relaxed, vibrant, cheerful, serene, whimsical, earthy.\nWhen writing your description, consider the overall feeling you want to evoke and which elements are most prominent in the decoration.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/hd6.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Haldi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Your Haldi, Our Canvas –\nDecorated With Emotions",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Haldi',
                                imgurl1: 'assets/hd7.jpg',
                                imgurl2: 'assets/hd8.jpg',
                                imgurl3: 'assets/hd9.jpg',
                                price: 4469,
                                description:
                                    'For a sophisticated Haldi ceremony, our decor combines understated elegance with traditional charm.A whisper of gold and sunshine.Subbayya Grand Kakinada ,6-42, Nookalamma, D.no: 10, Temple St, Rama Rao Peta, Kakinada, Andhra Pradesh 533004, India.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/hd9.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Haldi ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Anakapalli",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Let the Yellow Ceremony Begin -\n  Curated with Love by Royal Events",
                                  style: TextStyle(fontSize: 14),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 8),
              child: Text(
                "Sangeet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Sangeet',
                                imgurl1: 'assets/sd1.jpg',
                                imgurl2: 'assets/sd2.jpg',
                                imgurl3: 'assets/sd3.jpg',
                                price: 6999,
                                description:
                                    'For sangeet ceremonies in Hyderabad, consider banquet halls like Banquets @ Chittimuthyalu, Noma Kalyana Vedika, Shoba Gardens, or Sri Lakshmi Convention Hall, according to Justdial. VenueLook also offers options with specific venues like Deccan Serai Hotel and Halo Cocktail Bar & Kitchen. You can also explore options like hotels with banquet halls, gardens, or event spaces, as suggested by Wedding',
                              ),
                        ),
                      );
                    },

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/sd1.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Sangeet",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  " Celebrate love with beats,\n lights, and joyful nights!",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Sangeet',
                                imgurl1: 'assets/sd4.jpg',
                                imgurl2: 'assets/sd5.jpg',
                                imgurl3: 'assets/sd6.jpg',
                                price: 7799,
                                description:
                                    '  Get ready for a vibrant fiesta! This Haldi decor scheme is a kaleidoscope of bright colors.V Convention,Hitech City Rd, Siddhi Vinayak Nagar, Madhapur, Hyderabad, Telangana 500081, India.Traditional, festive, elegant, relaxed, vibrant, cheerful, serene, whimsical, earthy.When writing your description, consider the overall feeling you want to evoke and which elements are most prominent in the decoration.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/sd6.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Sangeet",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • warangal",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Dance like nobody’s watching\nlove like never before!",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Sangeet',
                                imgurl1: 'assets/sd7.jpg',
                                imgurl2: 'assets/sd8.jpg',
                                imgurl3: 'assets/sd9.jpg',
                                price: 5599,
                                description:
                                    ' Inspired by natures beauty, this Haldi setup features a rustic charm.Its an organic and warm aesthetic that feels both authentic and celebratory.SRMT Function Hall,Main Rd, Suryanarayana Puram, Kakinada, Andhra Pradesh 533001, India..When writing your description, consider the overall feeling you want to evoke and which elements are most prominent in the decoration.',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/sd9.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Sangeet",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Anakapalli",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "From melodies to memories\n your Sangeet, our magic!",
                                  style: TextStyle(fontSize: 14),
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
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 8),
              child: Text(
                "Reception",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Reception',
                                imgurl1: 'assets/cm1.jpg',
                                imgurl2: 'assets/cm2.jpg',
                                imgurl3: 'assets/cm3.jpg',
                                price: 5999,
                                description:
                                    'Start with online directories:Explore platforms like Justdial and WeddingWire.in. \nSearch by location:Use the search bar to find venues in specific areas or near your desired location. \n Filter by venue type:Select your preferred venue type, such as banquet halls, marriage gardens, or hotels.\n Check ratings and reviews:Look for reviews and ratings from previous clients to gauge the venues quality and service.\nContact event management companies:Many companies offer full-service wedding planning, including venue selection and coordination.\n Seating Plan & Table Arrangement\nChoose Table Types and Sizes: Select tables based on space and the number of guests you want to accommodate at each table. \nArrange RemainingFood and Beverage Service:\nPlan the Menu: Consider dietary needs, allergies, and preferences when creating the menu.\n',
                              ),
                        ),
                      );
                    },

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/cm4.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grand Receptions",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Days • Hyderabad",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Celebrate your love in style\n with premium reception services.",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Reception',
                                imgurl1: 'assets/cm4.jpg',
                                imgurl2: 'assets/cm8.jpg',
                                imgurl3: 'assets/cm5.jpg',
                                price: 8799,
                                description:
                                    ' \n Filter by venue type:Select your preferred venue type, such as banquet halls, marriage gardens, or hotels.\n Check ratings and reviews:Look for reviews and ratings from previous clients to gauge the venues quality and service.\nContact event management companies:Many companies offer full-service wedding planning, including venue selection and coordination.\n Seating Plan & Table Arrangement\nChoose Table Types and Sizes: Select tables based on space and the number of guests you want to accommodate at each table. \nArrange RemainingFood and Beverage Service:\nPlan the Menu: Consider dietary needs, allergies, and preferences when creating the menu.\n',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/cm7.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Elite Events",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Day • Vizag",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "An elegant experience\nfor your special day. Book now!",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ProductDetailPage(
                                cname: 'Reception',
                                imgurl1: 'assets/cm5.jpg',
                                imgurl2: 'assets/cm1.jpg',
                                imgurl3: 'assets/cm4.jpg',
                                price: 5599,
                                description:
                                    '\nSearch by location:Use the search bar to find venues in specific areas or near your desired location. \n Filter by venue type:Select your preferred venue type, such as banquet halls, marriage gardens, or hotels.\n Check ratings and reviews:Look for reviews and ratings from previous clients to gauge the venues quality and service.\nContact event management companies:Many companies offer full-service wedding planning, including venue selection and coordination.\n Seating Plan & Table Arrangement\nChoose Table Types and Sizes: Select tables based on space and the number of guests you want to accommodate at each table. \nArrange RemainingFood and Beverage Service:\nPlan the Menu: Consider dietary needs, allergies, and preferences when creating the menu.\n',
                              ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      elevation: 6,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            child: Image.asset(
                              'assets/cm8.jpg',
                              height: 180,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Modern Venue",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "On your Desired Day • Vijayawada",
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Stylish receptions\n for a lifetime of memories.",
                                  style: TextStyle(fontSize: 14),
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
            ),
          ],
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                ),
                child: Text('Home', style: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white10,
                ),
                child: Text('Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
