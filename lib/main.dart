import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Directory App",
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Branch"),
        backgroundColor: Colors.green,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search_outlined,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      // drawer:  Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         padding: EdgeInsets.all(0),
      //         decoration: BoxDecoration(
      //         ),
      //           // child: UserAccountsDrawerHeader(
      //           //   decoration: BoxDecoration(color: Colors.green),
      //           //   accountEmail: null, accountName: null,
      //           //   currentAccountPicture: Image.network("https://cdn-icons-png.flaticon.com/512/21/21518.png"),
      //           // ),
      //         child: Container(
      //           color: Colors.cyan,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Image.network("https://cdn-icons-png.flaticon.com/512/21/21518.png", height: 70,),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: Drawer(
        child: ListView(
          padding:  EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/c/c1/DMCB_Logo_%28PNG_File%29.jpg",
                      height: 70,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Dhaka Mercantile Co-operative Bank Ltd", style: TextStyle(
                          fontSize: 10
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Text(' Branch '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(' Manager '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text(' Contact '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Column(
              children: [
                Divider(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Communicate",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.report_gmailerrorred),
              title: const Text(' About Us '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => aboutUs()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class aboutUs extends StatelessWidget {
  const aboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/c/c1/DMCB_Logo_%28PNG_File%29.jpg",
                height: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('''The Dhaka Mercantile Co-operative Bank Limited [DMCBL] is a Shariah based co-operative bank in Bangladesh. Dhaka Mercantile Co-operative Bank was established on 6th January, 1973 under the Cooperative Society Act & Rules of Bangladesh. For DMCBL, the words "Society" and "Bank" have become synonymous/ as is the case for DMCBL. In 2001, Group Captain Abu Zafar Chowdhury (Retd.) GD(P) Psc. resurrected the operation with the vision of a poverty-free Bangladesh.

                  DMCBL is a Specialized Development Co-operative Financial Institution in Bangladesh, offering retail and commercial banking under a co-operative theme. DMCBL provides collateral-free credit, investment to the businesses that are legal entities and their entrepreneurs are able, well-informed, success-motivated, and has good understanding of the business, and has a good, acceptable social reputation within the community.

                  The Dhaka Mercantile Co-operative Bank Limited is the largest Co-operative under the supervision of the Co-operative Department of Ministry of L.G.R.D Bangladesh. This institution is audited annually by the Co-operative Department of the Government. In addition to a governmental audit, DMCBL internally appoints S.F Ahmed & Company, Chartered Accountants to scrutinize the bank's financial standing/ strength and depth, as well as advice on necessary measures and practices so as to comply with the internationally accepted standards of accounting and book-keeping. Hiring an external company to do internal audits also satisfies significant stake holder and legislative needs and rules.

                  Our per capita annual gross income is EURO 10000 minimum being EURO 2000 in coming years, It will be further enhanced.

                  The Dhaka Mercantile Co-operative Bank Limited has over 142 Branches with over 3700 energetic and enthusiastic staff that thrive towards excellent service, sustainable profitability, and an overall socially responsible financial institution.

                  DMCBL emanates its strength from its highly acclaimed management, strong customer focus and relationships built on integrity, superior service and mutual benefit.''')
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
