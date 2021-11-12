import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:strete_workout/constants.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [

        /// Column (Your Cart + Description)
        Container(
          margin: const EdgeInsets.only(top: 30.0, left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("Your Cart", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35,
                color: kTitleDarkTextColor
            ),),
            SizedBox(height: 10),
            Text("There are 4 items in your cart", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18,
                color: kBodyTextMinorColor
            ),),
          ],),
        ),
        const SizedBox(height: 30),


        /// Line separator
        const Divider(thickness: 3, indent: 20, endIndent: 20),
        const SizedBox(height: 30),


        /// Row (Image + Column ya Texts)
        rowShoes('Multi coloured Nike unisex \ntrainers',
            '45', 'Multi', '99,00',
            'https://image.freepik.com/free-vector/running-shoes-cartoon-illustration-flat-cartoon-style_138676-2849.jpg',
        ),
        const SizedBox(height: 30),


        rowShoes('Corporate mid heeled pumps \nfor work',
          '41', 'Cream', '99,00',
          'https://image.freepik.com/free-photo/women-heeled-shoes_1303-5875.jpg',
        ),
        const SizedBox(height: 30),


        rowShoes('Simple tennis shoes for \noutdoors',
          '45', 'Blue', '99,00',
          'https://image.freepik.com/free-photo/tennis-set-hard-court_1150-6395.jpg',
        ),
        const SizedBox(height: 30),


        rowShoes('bowed gold pumps by Zara \nfashion',
          '41', 'Gold', '99,00',
          'https://image.freepik.com/free-photo/brides-wedding-shoes-with-wedding-bouquet_1303-25282.jpg',
        ),
        const SizedBox(height: 45),


        /// Row ya Total Money
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Row(
              children: const [

                Text("Total", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22,
                    color: kTitleDarkTextColor
                ),),
                SizedBox(width: 15),
                Text("VAT included"),

              ],
            ),

            const Text("396,00€", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22,
                color: kTitleDarkTextColor
            ),),

          ],),
        ),
        const SizedBox(height: 30),


        /// Checkout Now Button
        Container(
          margin: const EdgeInsets.only(
              left: 20, right: 20
          ),
          height: 70,

          decoration: BoxDecoration(
            color: kButtonColor6,

            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5
              )
            ],

            borderRadius: BorderRadius.circular(12.0),

          ),

          child: const Center(
            child: Text("Checkout Now", style: TextStyle(
                fontSize: 22, color: kTitleTextColor
            ),),
          ),

        ),
        const SizedBox(height: 30),

      ],),
    );
  }


  Slidable rowShoes(String title, size, color, money, picha) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,

      child: Row(
          children: [

            /// Image
            Container(

              margin:const EdgeInsets.only(left: 15.0),
              height: 120.0, width: 120.0,

              decoration: BoxDecoration(

                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5
                  )
                ],

                borderRadius: BorderRadius.circular(12.0),

                image: DecorationImage(
                  image: NetworkImage(picha),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),

            const SizedBox(width: 20),


            /// Column of Texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Text(title, style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18,
                  color: kTitleDarkTextColor
              ),),

                const SizedBox(height: 10),

              Row(
                children: [
                  Text("Sized $size", style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18,
                      color: kBodyTextMinorColor
                  ),),

                  const SizedBox(width: 15),

                  Text("Colour: $color", style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18,
                      color: kBodyTextMinorColor
                  ),),
                ],
              ),

                const SizedBox(height: 10),

              Text("$money€", style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22,
                  color: kTitleDarkTextColor
              ),)
            ],),


          ],
        ),

      /// Archive + Share Slider Buttons
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => print('Archive'),
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () => print('Share'),
        ),
      ],


      /// More + Delete Slider Buttons
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () => print('More'),
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => print('Delete'),
        ),
      ],

    );
  }


}
