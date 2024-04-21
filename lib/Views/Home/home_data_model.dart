class HomeData {
  final String image1;
  final String image;
  final String text1;
  final String text2;
  final String price;

  HomeData({
    required this.image1,
    required this.image,
    required this.text1,
    required this.text2,
    required this.price,
  });
}

final homeData = [
  HomeData(
    image1: 'assets/icons/heart-line.png',
    image: 'assets/images/image 6.png',
    text1: 'Arabica',
    text2: 'Lorem ipsum dolor\nsit amet cons ',
    price: '\$18',
  ),
  HomeData(
    image1: 'assets/icons/heart-line.png',
    image: 'assets/images/image 6.png',
    text1: 'Excelsa',
    text2: 'Lorem ipsum dolor\nsit amet cons ',
    price: '\$15',
  ),
  HomeData(
    image1: 'assets/icons/heart-fill.png',
    image: 'assets/images/image 9 (1).png',
    text1: 'Robusta',
    text2: 'Lorem ipsum dolor\nsit amet cons ',
    price: '\$20',
  ),
  HomeData(
    image1: 'assets/icons/heart-line.png',
    image: 'assets/images/image 9 (1).png',
    text1: 'Liberica',
    text2: 'Lorem ipsum dolor\nsit amet cons ',
    price: '\$12',
  ),
];
