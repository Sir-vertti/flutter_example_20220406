import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //!ESTE WIDGET ES LA RAIZ DE LA APLICACION
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

       //!todo el tema de la aplicacion

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 //!ESTE WIDGET ES EL PRINCIPAL DE LA APLICACION

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      //!ESTE METODO ES EL QUE SE ENCARGA DE ACTUALIZAR LA INTERFAZ DE USUARIO

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    //!ESTE METODO SE EJECUTA CADA VEZ QUE SE ACTUALIZA LA INTERFAZ DE USUARIO

    return Scaffold(
      appBar: AppBar(
       //?ESTE WIDGET ES LA BARRA SUPERIOR DE LA APLICACION

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //?ESTE ATRIBUTO ES EL COLOR DE FONDO DE LA BARRA SUPERIOR

        title: Text(widget.title),
      ),
      body: Center(
      //?ESTE WIDGET ES EL CUERPO DE LA APLICACION

        child: Column(
         //?ESTE WIDGET ES UNA COLUMNA DE WIDGETS
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
