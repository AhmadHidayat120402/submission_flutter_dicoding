import 'package:flutter/material.dart';
import 'package:fruits_aps/model/fruits_data.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailFruit extends StatelessWidget {
  final Fruits fruit;

  const DetailFruit({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(
            fruit: fruit,
          );
        } else {
          return DetailMobilePage(
            fruit: fruit,
          );
        }
      },
    );
  }
}

class DetailMobilePage extends StatefulWidget {
  final Fruits fruit;

  const DetailMobilePage({Key? key, required this.fruit}) : super(key: key);

  @override
  State<DetailMobilePage> createState() => _DetailMobilePageState();
}

class _DetailMobilePageState extends State<DetailMobilePage> {
  final _scrollCOntroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    widget.fruit.imageAssets,
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  widget.fruit.nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.monetization_on),
                        const SizedBox(height: 8.0),
                        Text(
                          'Rp ${widget.fruit.price}',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.beenhere),
                        const SizedBox(height: 8.0),
                        Text(
                          widget.fruit.vitamin,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.health_and_safety),
                        const SizedBox(height: 8.0),
                        Text(
                          widget.fruit.manfaat,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.fruit.deskripsi,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Scrollbar(
                  controller: _scrollCOntroller,
                  child: ListView(
                    controller: _scrollCOntroller,
                    scrollDirection: Axis.horizontal,
                    children: widget.fruit.imageUrls.map((url) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}

class DetailWebPage extends StatefulWidget {
  final Fruits fruit;
  const DetailWebPage({required this.fruit, super.key});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Fruits Apps",
          ),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                  width: screenWidth <= 1600 ? 800 : 1200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                widget.fruit.imageAssets,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.5,
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Scrollbar(
                              controller: _scrollController,
                              child: Container(
                                height: 150,
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: ListView(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.fruit.imageUrls.map((url) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ])),
                      const SizedBox(width: 32.0),
                      Expanded(
                          child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                child: Text(
                                  widget.fruit.nama,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Staatliches'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.monetization_on),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(widget.fruit.price)
                                    ],
                                  ),
                                  const FavoriteButton()
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.beenhere),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(widget.fruit.vitamin)
                                ],
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.health_and_safety),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(widget.fruit.manfaat)
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.fruit.deskripsi,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 16.0, fontFamily: 'Oxygen'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  )),
            ),
          ),
        ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
