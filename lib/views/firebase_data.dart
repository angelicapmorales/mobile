
import 'package:flutter/material.dart';
import '../Entities/registros.dart';
import '../domain/firebase_connection.dart';

class GetFireBase extends StatefulWidget {
  const GetFireBase({Key? key}) : super(key: key);

  @override
  State<GetFireBase> createState() => _GetFireBaseState();
}

class _GetFireBaseState extends State<GetFireBase> {
  final connection = FirebaseConnection();
  List<Registros> registros = [];
  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cars"),
        ),
        body: ListView.builder(
            itemCount: registros.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: GestureDetector(
                  onTap: () => showDialog<Image>(context: context, builder: (BuildContext context) => AlertDialog(
                    content:Column(children: [Image(image:Image.network(registros[index].image!).image), 
                      const Text(""),
                      const Text("Usuario", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Nombre: ${registros[index].nombre} ${registros[index].apellido}"),
                      Text("Licencia: ${registros[index].licencia}"),
                      const Text(""),
                      const Text("Car Description", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Marca: ${registros[index].carro?.marca}"),
                      Text("Placa: ${registros[index].carro?.placa}"),
                      Text("Modelo: ${registros[index].carro?.modelo}"),
                      Text("Color: ${registros[index].carro?.color}"),
                      const Text(""),
                      const Text("Services", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Lavado: ${registros[index].servicio?.lavado}"),
                      Text("Polish: ${registros[index].servicio?.polish}"),
                      Text("Tapiceria: ${registros[index].servicio?.tapiceria}")
                    ]
                    ),
                  actions: [
                      TextButton(  
                        child:const Center(child: Text("OK")),  
                        onPressed: () {  
                          Navigator.of(context).pop();  
                        },  
                      ),  
                  ],
                  )),
                  child: CircleAvatar(
                    backgroundImage:
                        Image.network(registros[index].image!).image,
                  ),
                ),
                title: GestureDetector(
                  onTap: () => showDialog<Image>(context: context, builder: (BuildContext context) => AlertDialog(
                    content:Column(children: [Image(image:Image.network(registros[index].image!).image), 
                      const Text(""),
                      const Text("Usuario", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Nombre: ${registros[index].nombre} ${registros[index].apellido}"),
                      Text("Licencia: ${registros[index].licencia}"),
                      const Text(""),
                      const Text("Car Description", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Marca: ${registros[index].carro?.marca}"),
                      Text("Placa: ${registros[index].carro?.placa}"),
                      Text("Modelo: ${registros[index].carro?.modelo}"),
                      Text("Color: ${registros[index].carro?.color}"),
                      const Text(""),
                      const Text("Services", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Lavado: ${registros[index].servicio?.lavado}"),
                      Text("Polish: ${registros[index].servicio?.polish}"),
                      Text("Tapiceria: ${registros[index].servicio?.tapiceria}")
                    ]
                    ),
                      actions: [
                        TextButton(  
                        child:const Center(child: Text("OK")),  
                        onPressed: () {  
                          Navigator.of(context).pop();  
                        },  
                      ),  
                      ],
                      )),
                      child: Stack(
                        children: [
                          Text("${registros[index].nombre} ${registros[index].apellido}")
                        ],
                      )
                ),
          
              );
            }));
  }

  void callDatabase() async {
    final response = await connection.getData();
    if (!mounted) return;
    setState(() {
      registros = response.registros!;
    });
  }
}