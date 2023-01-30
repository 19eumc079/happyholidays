import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:happyholidays/styles/styles.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key, required this.tripkey});
  final String tripkey;

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final userPlaceController = TextEditingController();
  final userCountryController = TextEditingController();
  final userPriceFromController = TextEditingController();
  final userPriceToController = TextEditingController();
  final useRatingController = TextEditingController();
  late DatabaseReference ref;

  @override
  void initState() {
    super.initState();
    ref = FirebaseDatabase.instance.ref().child("tripdata");
  }

  void getTripData() async {
    DataSnapshot snapshot = ref.child(widget.tripkey).get() as DataSnapshot;

    Map data = snapshot.value as Map;
    userPlaceController.text = data['price'];
    userCountryController.text = data['country'];
    useRatingController.text = data['rating'];
    userPriceFromController.text = data['from_price'];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.teritaryColor,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColor.secondaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    "Add Your Trip!",
                    style: TextFonts.primaryText,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: userPlaceController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: TextColor.teritaryColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BoxBorders.secondaryBoxBorders,
                        ),
                        hintText: ("Ender the New Place ")),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: userCountryController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: TextColor.teritaryColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BoxBorders.secondaryBoxBorders,
                        ),
                        hintText: ("Ender the New Country ")),
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Icon(Icons.currency_exchange_rounded),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: TextField(
                        controller: userPriceFromController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: TextColor.teritaryColor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BoxBorders.secondaryBoxBorders,
                            ),
                            hintText: ("\$45 - \$50")),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: TextField(
                    controller: useRatingController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: TextColor.teritaryColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BoxBorders.secondaryBoxBorders,
                        ),
                        hintText: ("Customer Rating /5")),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: AppColor.teritaryColor),
                        onPressed: () {
                          Map<String, String> data = {
                            'place': userPlaceController.text,
                            'country': userCountryController.text,
                            'from_price': userPriceFromController.text,
                            'rating': useRatingController.text,
                          };
                          ref.once().then((value) {
                            DataSnapshot event = value.snapshot;
                            List val = event.value as List;

                            ref
                                .update(data)
                                .then((value) => {Navigator.pop(context)});
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("submit",
                              style: TextStyle(
                                  color: AppColor.secondaryColor,
                                  fontSize: 20)),
                        )),
                    CircleAvatar(
                      backgroundColor: AppColor.teritaryColor,
                      radius: 27,
                      child: IconButton(
                        icon: Icon(Icons.home_filled),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
