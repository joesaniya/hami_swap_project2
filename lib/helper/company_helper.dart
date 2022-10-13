import '../model/company.dart';

class CompanyHelper {
  static List<Company> SarchResultCompany = CompanySearchResultRawData.map(
      (data) => Company(
          image: data['image'].toString(),
          title: data['title'].toString(),
          Subtitle: data['Subtitle'].toString(),
          number: data['number'].toString())).toList();
}

var CompanySearchResultRawData = [
  //1
  {
    'image': 'assets/images/bnb.png',
    'title': 'BNB',
    'Subtitle': 'BNB',
    'number': '#12'
  },

  //2
  {
    'image': 'assets/images/btcb.png',
    'title': 'BTCB',
    'Subtitle': 'BTCB Token',
    'number': '#12'
  },

  //3
  {
    'image': 'assets/images/busd.png',
    'title': 'BUSD',
    'Subtitle': 'BUSD Token',
    'number': '#12'
  },

  //4
  {
    'image': 'assets/images/eth.png',
    'title': 'ETH',
    'Subtitle': 'Ethereum Token',
    'number': '#12'
  },

  //5
  {
    'image': 'assets/images/hami.png',
    'title': 'HAMI',
    'Subtitle': 'Hami Token',
    'number': '#12'
  },

  //6
  {
    'image': 'assets/images/usdt.png',
    'title': 'USDT',
    'Subtitle': 'Tether USD',
    'number': '#12'
  },

  //7
  {
    'image': 'assets/images/wbnb.png',
    'title': 'WBNB',
    'Subtitle': 'WBNB Token',
    'number': '#12'
  },
];
