import 'package:flutter/material.dart';
import 'package:yapi_kredi_mobil/model/reklam.dart';

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  List<Reklam> reklamlar = [
    Reklam("assets/aykut.jpg", "Emekli olan olmayan herkes kazanıyor!"),
    Reklam("assets/Merttt.jpg", "Huawei ürünlerinde 1.250₺ indirim!"),
    Reklam("assets/serhat.jpg", "Kampanyalar artık ana sayfanızda!"),
    Reklam("assets/kobra.jpg", "Aracınızla ilgili ne varsa Aracım+'ta!"),
  ];

  bool _showPasswordContainers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("YapıKredi"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 6,
            top: 6,
            bottom: 6,
          ),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "TR",
              style: TextStyle(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              side: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity),
                Stack(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          child: Image.asset(
                            "assets/Merttt.jpg",
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                      ),
                      shape: CircleBorder(side: BorderSide(color: Colors.grey)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.black,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up_off_alt,
                          size: 48,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Sağlıklı Günler, Mert Can Acar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        _showPasswordContainers
                            ? Positioned.fill(
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          _buildPasswordContainer(),
                                          _buildPasswordSpace(),
                                          _buildPasswordContainer(),
                                          _buildPasswordSpace(),
                                          _buildPasswordContainer(),
                                          _buildPasswordSpace(),
                                          _buildPasswordContainer(),
                                          _buildPasswordSpace(),
                                          _buildPasswordContainer(),
                                          _buildPasswordSpace(),
                                          _buildPasswordContainer(),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                        TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: _showPasswordContainers ? '' : "Şifre",
                          ),
                          /*decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            hintText: "Şifre",
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 16,
                            ),
                          ),*/
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: reklamlar.length,
                itemBuilder: _buildReklam,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[800],
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Piyasalar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Atm / Şube",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Bildirimler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Daha Fazlası",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("JET"),
        mini: false,
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget _buildReklam(BuildContext context, int index) {
    return Row(
      children: [
        Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                  top: 12,
                  bottom: 12,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Card(
                    child: Image.asset(
                      reklamlar[index].resim,
                      height: double.infinity,
                      fit: BoxFit.fitHeight,
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Flexible(
                child: Text(
                  reklamlar[index].yazi,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 12,
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Widget _buildPasswordContainer() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordSpace() {
    return SizedBox(width: 8);
  }
}
