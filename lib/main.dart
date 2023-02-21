import 'package:flutter/material.dart';
import './chat_model.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fluttermaster.com - Message Chat'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
          ChatModel _model = ChatModel.dummyData[index];

          return Column(
            children: <Widget>[
            Divider(
              height: 12.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24.0,
                backgroundImage: NetworkImage(_model.avatarUrl),
              ),
              title: Row(
                children: <Widget>[
                Text(_model.name),
                SizedBox(
                  width: 16.0,
                ),
                Text(
                  _model.datetime,
                  style: TextStyle(fontSize: 12.0),
                ),
                ],
              ),
              subtitle: Text(_model.message),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 14.0,
              ),
            ),
          ],
        );
      },
    ),
  ),

  floatingActionButton: FloatingActionButton(
    child: Text("Next"),
    onPressed: (){
    Navigator.push(context , MaterialPageRoute(
          
          builder: (context) => const MyStatelessWidget()));
  }),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("kama"),
              accountEmail: Text("ka@gmail.com"), 
              currentAccountPicture: CircleAvatar(
              child: Text('k'),
            ),
            // ListTile(
            //   leading: Icon(Icons.settings),
            // )
            )
          ],
        )
      )
    );
  } 
}


class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Tracy')),
            DataCell(Text('20')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Tatenda')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Kumar')),
            DataCell(Text('27')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
    );
  }
}


