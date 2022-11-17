class DataModel {
  final String title;
  final String imageName;
  final String imageName2;
  final String price;
  final String info;
  DataModel(
    this.title,
    this.imageName,
    this.imageName2,
    this.price,
    this.info,
  );
}


List<DataModel> dataList = [
  DataModel("Chevrolet Prisma", "assets/images/fashion2.jpeg","assets/images/car2.jpg", '8,855', ' Chevrolet Prisma LT MT posee un motor a gasolina de 4 cilindros en línea transversal con 97 HP a 5800 RPM con transmisión de 5 velocidades. De serie, posee aire acondicionado, asiento regulable en altura y cierre centralizado con comando a distancia integrada en llave.'),
  DataModel("Fiat Mobi", "assets/images/fashion1.jpeg","assets/images/car2.1.jpg", "10,500", ' El Fiat Mobi 2021 emplea un motor de tres cilindros y 1.0 litros, capaz de desarrollar 69 hp y 68 lb-pie. Envía su poder al eje delantero mediante una transmisión manual de cinco velocidades. La marca destaca su altura de 19 cm respecto al piso.'),
  DataModel("Renault Sandero", "assets/images/fashion4.png","assets/images/car2.2.jpg", "15,700", ' El Sandero es un cinco plazas con carrocería hatchback de cinco puertas, motor delantero transversal y tracción delantera. Utiliza la plataforma B de Renault, compartida con el Dacia/Renault Logan, Renault Clio II, el Renault Modus, el Nissan Micra III y el Nissan Note.'),
  DataModel("Ford Ka+", "assets/images/fashion3.jpg","assets/images/car2.3.jpg", "8,340", ' El Ford Ka+ es la alternativa de la marca del óvalo para el segmento de los automóviles urbanos. Gracias a sus reducidas dimensiones, este coche es perfecto para desplazarse con agilidad por los abarrotados núcleos urbanos y para protagonizar los viajes cortos del día a día.'),
];