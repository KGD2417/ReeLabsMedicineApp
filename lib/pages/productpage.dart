

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String productName;

  const ProductPage({Key? key, required this.productName}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int? _rating;
  String? _review;
  late String _productName = "";
  num _originalPrice = 0.0;
  num _discount = 0.0;
  num _discountedPrice = 0.0;
  String _applicableOffer = '';
  String _benefits = '';
  String _formattedDeliveryDate = '';
  String _description = '';
  String _imageURL = '';

  final List<String> _reviews = [];

  @override
  void initState() {
    super.initState();
    _productName = widget.productName;
    fetchProductData();
  }

  Future<void> fetchProductData() async {
    try {
      DocumentSnapshot productSnapshot = await FirebaseFirestore.instance
          .collection('Stomach_Care')
          .doc(_productName)
          .get();
      _productName = productSnapshot['Name'] ?? '';
      _originalPrice = productSnapshot['OriginalPrice'] ?? 0.0;
      _discount = productSnapshot['Discount'] ?? 0.0;
      _discountedPrice = productSnapshot['DiscountedPrice'] ?? 0.0;
      _applicableOffer = productSnapshot['ApplicableOffer'] ?? '';
      _benefits = productSnapshot['Benefits'] ?? '';
      _formattedDeliveryDate = productSnapshot['DeliverDate'] ?? '';
      _description = productSnapshot['Description'] ?? '';
      _imageURL = productSnapshot['image'] ?? '';
      print("Hello" + _productName);

      setState(() {

      });
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching product data: $e');
      }
      // Handle error gracefully, show a message to the user, or retry fetching data
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 250,
              child: Image.network(
                _imageURL.isNotEmpty
                    ? _imageURL
                    : 'lib/images/product_image1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _productName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' (100 ratings)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Actual Cost:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '₹${_originalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Discount:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${_discount.toStringAsFixed(0)}%',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Discounted Price:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '₹${_discountedPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: const Text(
                        'Room No.1102, Anmol Sankalp Chs, Sec-05, Pl0t-59, Ulwe, Navi Mumbai, Maharashtra'),
                    onTap: () {
                      // Implement address entry functionality
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: const Text('Deliver by Date'),
                    subtitle: Text(
                        _formattedDeliveryDate
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.local_offer),
                    title: const Text('Applicable Offers'),
                    subtitle: Text(
                        _applicableOffer
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Product Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Benefits',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _benefits,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Product added to cart'),
                            ),
                          );
                        },
                        child: const Text('Add to Cart'),
                      ),
                      const SizedBox(height: 16),
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 40,
                      ),
                      const Text(
                        'Feedback',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            'Your Rating:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          buildRatingStars(),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Customer Reviews:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildReviewItem(
                          'John Doe', 'Great product! Fast delivery.'),
                      _buildReviewItem(
                          'Jane Smith', 'Good quality. Will buy again.'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          _showRatingDialog();
                        },
                        child: const Text('Add Your Rating & Review'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingStars() {
    List<Widget> stars = [];
    for (int i = 0; i < 5; i++) {
      IconData starIcon = i < (_rating ?? 0) ? Icons.star : Icons.star_border;
      Color starColor = i < (_rating ?? 0) ? Colors.yellow : Colors.grey;
      Widget star = InkWell(
        onTap: () {
          setState(() {
            _rating = i + 1;
          });
        },
        child: Icon(
          starIcon,
          color: starColor,
        ),
      );
      stars.add(star);
    }
    return Row(children: stars);
  }

  Widget _buildReviewItem(String name, String review) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(review),
        ],
      ),
    );
  }


  Future<void> _showRatingDialog() async {
    _review = '';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text('Rate the Product'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _rating = index + 1;
                          });
                        },
                        child: Icon(
                          index < (_rating ?? 0)
                              ? Icons.star
                              : Icons.star_border,
                          color: index < (_rating ?? 0)
                              ? Colors.yellow
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        _review = value;
                      });
                    },
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Enter your review',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _submitReview();
                  },
                  child: const Text('Submit'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _submitReview() {
    setState(() {
      _reviews.add(_review!);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Your review has been submitted'),
      ),
    );
  }
}