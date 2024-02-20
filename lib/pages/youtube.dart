import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'dart:io';
import 'dart:async';

class Youtube extends StatefulWidget {
  @override
  YoutubeState createState() => YoutubeState();
}

class YoutubeState extends State<Youtube> {
  String sssss = "sss";
  int xx = 1;
  Duration _refreshInterval = Duration(minutes: 1);
  List<String> urlList2 = [
    "https://youtu.be/UbdVxTomvGc?si=qZE3Z1ejhlcXNo0l",
    "https://youtu.be/RZS7W_ck574?si=WBIBbkZiGgRVEe4D",
    "https://youtu.be/xmcNFGfAokI?si=A9JCIM6osO4xa_ks",
    "https://youtu.be/ipAuzP9TxXc?si=nivDtQHJijm8F6TM",
    "https://youtu.be/P3kZK1LZIFQ?si=onYSCoWA_EV6XSer",
    "https://youtu.be/LYcwzX_oNqM?si=xBvpTx-QeghQQqRg",
    "https://youtu.be/rRKbSvh6S4o?si=xeLwxmm_xc3Pzujy",
    "https://youtu.be/MnJo6kpMyTg?si=D4iDyHet4RZnN8oT",
    "https://youtu.be/0m3jUDZGXCE?si=URTpbBgclKWnNcx5",
    "https://youtu.be/Y4MUeXHYXDA?si=imSNNRwlEr13iTg0",
    "https://youtu.be/kcAV9ISypQI?si=w220Kjo9QDopVezn",
    "https://youtu.be/oO4LWxtRd0M?si=p4luiHocPfcRU4dn",
    "https://youtu.be/tE_Qqg8qkr0?si=T-6xv1h_WK7Ewz5q",
    "https://youtu.be/7WQ72QJ7r-8?si=llIWfjTdZJDLbMPD",
    "https://youtu.be/uq3nM1vncsE?si=6F1_lpl3BAp4YmDV",
    "https://youtu.be/34bc6U38GeM?si=Pnxb7z2VdzHJzyll",
    "https://youtu.be/yd5dAnR9MrA?si=GZHwBzG0U4rdVngX",
    "https://youtu.be/KDOrNZEJMbE?si=04MxzM8DpGNesdN0",
    "https://youtu.be/JaAAyXR-2Lw?si=zSROUwz0KqjlNrGd",
    "https://youtu.be/TQ8I7wie8_c?si=iHrwNch7wILvUYgU",
  ];

  String getUrl(String url2) {
    String url = url2.replaceAll("watch?v=", "embed/");
    url = url.split('?')[0];
    url = url.replaceAll("watch", "");
    url = url.replaceAll("/shorts", "");
    url = url.replaceAll("/shorts", "");
    url = url.replaceAll("https://youtu.be", "https://www.youtube.com");
    url = url.replaceAll("https://youtube.com", "https://www.youtube.com");
    url = url.replaceAll(
        "https://www.youtube.com", "https://www.youtube.com/embed");
    url = url.replaceAll("/embed/embed", "/embed");
    url = url.replaceAll("/embed/embed", "/embed");
    url = url.replaceAll("?feature=shared", "");
    print("URL: $url");
    return url + "?autoplay=1&loop=1&mute=1";
  }

  List<String> getUrlList(List<String> urlsList) {
    return urlsList.map((url) => getUrl(url)).toList();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // YoutubeState state = context.findAncestorStateOfType<YoutubeState>();
      // state?.refreshWidget();
      xx = 2;
      refreshPage();
      Navigator.pushNamed(context, '/');
    } else if (state == AppLifecycleState.paused) {
      Navigator.pushNamed(context, '/');
      print('Widget resumed');
      xx = 2;
      refreshPage();
    }
  }

  List<String> urlList = [];

  void refreshPage() {
    if (xx % 2 == 0) {
      Navigator.pushNamed(context, '/');
    }
    setState(() {
      // urlList = urlList.reversed.toList();
      sssss = sssss + "s";
      xx = xx + 1;
      // urlList = [];
    });

    Timer(_refreshInterval, refreshPage);
  }

  @override
  void initState() {
    super.initState();
    urlList = getUrlList(urlList2);
    refreshPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 196, 241),
        foregroundColor: Color.fromARGB(252, 245, 238, 220),
        title: const Text(
          "حسن العجمي",
          style: TextStyle(
              fontSize: 25, fontFamily: "myfont", fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // this will make your body scrollable
        child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            if (urlList.length > 0)
              TableRow(children: <Widget>[
                Container(
                  height: 120,
                  // width: 120,
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: urlList[1],
                  ),
                ),
                Container(
                  height: 120,
                  // width: 150,
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: urlList[1],
                  ),
                ),
                Container(
                  height: 120,
                  // width: 120,
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: urlList[2],
                  ),
                ),
              ]),
            TableRow(children: <Widget>[
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[3],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[4],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[5],
                ),
              ),
            ]),
            TableRow(children: <Widget>[
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[6],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[7],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[8],
                ),
              ),
            ]),
            TableRow(children: <Widget>[
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[9],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[10],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[11],
                ),
              ),
            ]),
            TableRow(children: <Widget>[
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[12],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[13],
                ),
              ),
              Container(
                height: 120,
                // width: 120,
                child: WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: urlList[14],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
