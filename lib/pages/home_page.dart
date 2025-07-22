import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2A4A),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome!',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white70,
                              ),
                            ),
                            Text(
                              'Aminur tahmid',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),

                    // Search Bar
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF2A3B5C),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white54),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Search what do you want?',
                              style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Icon(Icons.tune, color: Colors.white54),
                        ],
                      ),
                    ),

                    SizedBox(height: 24),

                    // Promo Banner
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange, Colors.orange.shade600],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '35% OFF',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit\namet consectetur',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.white70,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Shop Now',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Icon(
                              Icons.local_grocery_store,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 32),

                    // Categories
                    Text(
                      'Categories',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: _buildCategoryItem(
                            'Fruits',
                            Icons.apple,
                            Colors.orange,
                            true,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: _buildCategoryItem(
                            'Dairy',
                            Icons.local_drink,
                            Color(0xFF2A3B5C),
                            false,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: _buildCategoryItem(
                            'Vegeta',
                            Icons.eco,
                            Color(0xFF2A3B5C),
                            false,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: _buildCategoryItem(
                            'Meat',
                            Icons.restaurant,
                            Color(0xFF2A3B5C),
                            false,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 32),

                    // Popular Fruits
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Fruits',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'See All',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: _buildFruitCard(
                            'Orange',
                            '\$0.99',
                            'Kg',
                            Colors.orange,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: _buildFruitCard(
                            'Lemon',
                            '\$0.99',
                            'Kg', 
                            Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Bottom Navigation
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFF2A3B5C),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.orange, size: 28),
                  Icon(Icons.favorite_border, color: Colors.white54, size: 28),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white54,
                    size: 28,
                  ),
                  Icon(Icons.person_outline, color: Colors.white54, size: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
    String title,
    IconData icon,
    Color bgColor,
    bool isSelected,
  ) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.white54,
            size: 24,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: isSelected ? Colors.white : Colors.white54,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFruitCard(String name, String price, String unit, Color accentColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF2A3B5C),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  name.toLowerCase() == 'orange' 
                    ? 'assets/images/orange.png'
                    : 'assets/images/lemon.png',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      name.toLowerCase() == 'orange' ? Icons.circle : Icons.circle,
                      color: accentColor,
                      size: 40,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  ' /$unit',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                ),
                Spacer(),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
