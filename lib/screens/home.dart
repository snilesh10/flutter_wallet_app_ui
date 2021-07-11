import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> _icons = [
// The underscore declares a variable as private in dart.
    Icons.add,
    Icons.search,
    Icons.attach_money,
    Icons.more
  ];
  List<String> _iconText = [
// The underscore declares a variable as private in dart.
    'Add',
    'Search',
    'Topup',
    'More',
  ];
  Widget _buildIcon(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white38,
              ),
              child: Icon(
                _icons[index],
                size: 25.0,
                color: Colors.white,
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            _iconText[index],
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFF36d7f3), Color(0xFF4fa8ee)]),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://i.pravatar.cc/300'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text('John Hasting',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700))
                              ],
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.add_alert_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Balance',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$26,500',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _icons
                        .asMap()
                        .entries
                        .map(
                          (MapEntry map) => _buildIcon(map.key),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Last Transcation',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                ),
                Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            AllExpenses('Shopping', '', 25, 'cash', '11 July'),
                            AllExpenses(
                                'Broadband Bill', '', 100, 'Online', '08 July'),
                            AllExpenses(
                                'Water Bill', '', 35, 'Cheque', '05 July'),
                            AllExpenses('Hotel', '', 80, 'cash', '02 July'),
                            AllExpenses('Grossery', '', 90, 'cash', '01 July'),
                            AllExpenses(
                                'Medicines', '', 60, 'Online', '30 June'),
                          ],
                        );
                      }),
                ),
              ]),
            )
          ],
        ),
      )),
    );
  }
}

class AllExpenses extends StatelessWidget {
  final String shoptitle;
  final image;
  final price;
  final paymentmode;
  final date;
  AllExpenses(
      this.shoptitle, this.image, this.price, this.paymentmode, this.date);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(),
          title: Text(
            shoptitle,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(date),
          contentPadding: EdgeInsets.all(0),
          trailing: Column(
            children: [
              Text(
                '\$ $price',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(paymentmode),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}


/*
class HeaderIcons extends StatefulWidget {
  const HeaderIcons({Key? key}) : super(key: key);

  @override
  _HeaderIconsState createState() => _HeaderIconsState();
}

class _HeaderIconsState extends State<HeaderIcons> {
  final IconData btnIcon;
  HeaderIcons(btnIcon);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white38,
          ),
          child: Icon(
            Icons(btnIcon),
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Add',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
*/