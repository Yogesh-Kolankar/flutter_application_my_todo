import 'package:flutter/material.dart';
import 'package:flutter_application_my_todo/alertbox.dart';
import 'package:flutter_application_my_todo/appbar.dart';
import 'package:flutter_application_my_todo/detail_screen.dart';
import 'package:flutter_application_my_todo/providerscreen.dart';
import 'package:provider/provider.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ProviderState>(context);
    return Scaffold(
      drawer: Drawer(
        child: CircleAvatar(
          child: Icon(Icons.person),
        ),
      ),
      appBar: AppBar(
        title: MyAppBar(),
      ),
      body: Container(
        child: state.items.isEmpty
            ? Center(
                child: Text(
                "You have No data ",
                style: TextStyle(fontSize: 40),
              ))
            : ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              state.checkBox(state.items[index].id);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.check_circle_outline,
                              color: state.items[index].isChacked
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.items[index].title,
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                overflow: TextOverflow.ellipsis,
                                state.items[index].description,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete_forever_rounded,
                              color: Colors.red,
                              size: 40,
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: AlertDialog(
                                        title: Text("You want to delete"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                state.Remove(
                                                    state.items[index].id);
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("No",
                                                  style: TextStyle(
                                                      color: Colors.black)))
                                        ],
                                      ),
                                    );
                                  });

                              //state.Remove(state.items[index].id);
                              //setState(() {});
                            },
                          )
                        ],
                      ));
                }),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailScreen()));
          }),
    );
  }
}
