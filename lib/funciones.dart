import 'listas.dart';

void mostrarResumen() {
  print('\n====== RESUMEN SEMANAL ======\n');

  productos.forEach((producto, precios) {
    // Usamos `reduce` para calcular el total
    int total = precios.reduce((acumulador, valorproximo) => acumulador + valorproximo);

    // Mostrar precios por día y encontrar el día con el precio máximo
    int precioMax = precios[0];
    String diaMax = diasSemana[0];

    print('$producto:');

    for (int i = 0; i < precios.length; i++) {
      print('  ${diasSemana[i]}: \$${precios[i]}');

      if (precios[i] > precioMax) {
        precioMax = precios[i];
        diaMax = diasSemana[i];
      }
    }

    // Mostrar el resumen
    print(' Total semanal: \$${total}');
    print(' Día con mayor precio: $diaMax (\$$precioMax)\n');
  });
}
