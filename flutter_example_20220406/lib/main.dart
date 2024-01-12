import 'package:flutter/material.dart';

void main() { //?ESTE METODO ES EL PRINCIPAL DE LA APLICACION
  runApp(const MyApp()); //?ESTE METODO INICIALIZA LA APLICACION
}

class MyApp extends StatelessWidget { //?ESTE WIDGET ES LA RAIZ DE LA APLICACION
  const MyApp({super.key}); //?ESTE CONSTRUCTOR ES EL PRINCIPAL DE LA APLICACION

  //!ESTE WIDGET ES LA RAIZ DE LA APLICACION
  @override
  Widget build(BuildContext context) { //?ESTE METODO SE EJECUTA CADA VEZ QUE SE ACTUALIZA LA INTERFAZ DE USUARIO
    return MaterialApp( //?ESTE WIDGET ES EL QUE CONTIENE TODA LA APLICACION
      title: 'Flutter Demo', //?ESTE ATRIBUTO ES EL TITULO DE LA APLICACION
      theme: ThemeData( 

       //!todo el tema de la aplicacion

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), 
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), //?ESTE ES EL WIDGET PRINCIPAL DE LA APLICACIOIN
    );
  }
}

class MyHomePage extends StatefulWidget { 
  const MyHomePage({super.key, required this.title});

 //!ESTE WIDGET ES EL PRINCIPAL DE LA APLICACION

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //?ESTE SE ENCARGA DE ACTUALIZAR LA INTERFAZ DE USUARIO
}

class _MyHomePageState extends State<MyHomePage> { //?ESTE EXTIENDE LA CLASE DE STATE PARA LA INTERFAZ DE USUARIO
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
              'You have pushed the button this many times:', //!ESTA FUNCION ES LA QUE MUESTRA QUE EL BOTON AH SIDO PRESIONADO N VECES 
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium, //!ESTA FUNCION ES LA QUE MUESTRA EL NUMERO DE VECES QUE EL BOTON AH SIDO PRESIONADO
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( //!ESTE WIDGET ES EL BOTON FLOTANTE DE LA APLICACION
        onPressed: _incrementCounter,
        tooltip: 'Increment', //!ESTE ES EL TEXTO QUE APARECE CUANDO SE MANTIENE PRESIONADO EL BOTON
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
