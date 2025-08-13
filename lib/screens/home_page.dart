import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Color(0xFF00B14F),
        elevation: 0,
        title: Text(
          'OPay Style Home',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Wallet Balance Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF00B14F),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '₦12,500.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.account_balance_wallet,
                      size: 40, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 25),

            // Quick Actions Grid
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildQuickAction(Icons.send, 'Transfer'),
                _buildQuickAction(Icons.phone_android, 'Airtime'),
                _buildQuickAction(Icons.receipt, 'Bills'),
                _buildQuickAction(Icons.qr_code, 'Scan'),
                _buildQuickAction(Icons.savings, 'Savings'),
                _buildQuickAction(Icons.card_giftcard, 'Rewards'),
                _buildQuickAction(Icons.payment, 'Pay'),
                _buildQuickAction(Icons.more_horiz, 'More'),
              ],
            ),
            SizedBox(height: 30),

            // Your Buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00B14F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              onPressed: () => Navigator.pushNamed(context, '/register'),
              child: Text(
                'Go to Register',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF00B14F), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text(
                'Go to Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00B14F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFE6F8EE),
          radius: 28,
          child: Icon(icon, size: 28, color: Color(0xFF00B14F)),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
