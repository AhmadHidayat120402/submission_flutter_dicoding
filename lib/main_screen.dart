import 'package:flutter/material.dart';
import 'package:fruits_aps/detail_screen.dart';
import 'model/fruits_data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Fruits Apps "),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const FruitsList();
          } else if (constraints.maxWidth <= 800) {
            return const FruitsGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 900) {
            return const FruitsGrid(gridCount: 4);
          } else {
            return const FruitsGrid(gridCount: 6);
          }
        }));
  }
}

class FruitsList extends StatelessWidget {
  const FruitsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Fruits fruit = fruitsData[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailFruit(
                fruit: fruit,
              );
            }));
          },
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.all(10.0)),
                Expanded(
                  child: Image.asset(
                    fruit.imageAssets,
                    // fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          fruit.nama,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 10.0),
                        Text(fruit.vitamin)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: fruitsData.length,
    );
  }
}

class FruitsGrid extends StatelessWidget {
  final int gridCount;
  const FruitsGrid({required this.gridCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: gridCount,
        children: fruitsData.map((fruit) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailFruit(fruit: fruit);
              }));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(padding: EdgeInsets.all(10.0)),
                  Expanded(
                      child: Image.asset(
                    fruit.imageAssets,
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      fruit.nama,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(fruit.vitamin),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
