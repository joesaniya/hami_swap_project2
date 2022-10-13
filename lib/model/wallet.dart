class Wallet {
  const Wallet({this.title, this.image});
  final String? title;
  // final IconData? icon;
  final String? image;
}

const List<Wallet> Wallets = <Wallet>[
  // Wallet(title: 'Home', icon: Icons.home),
  Wallet(title: 'Metamask', image: 'assets/images/metamask.png'),
  Wallet(title: 'WalletConnect', image: 'assets/images/walletconnect.png'),
  Wallet(title: 'Trust Wallet', image: 'assets/images/trust1.png'),
  Wallet(title: 'MathWallet', image: 'assets/images/mathwallet.png'),
  Wallet(title: 'TokenPocket', image: 'assets/images/tockenpocket.png'),
  Wallet(title: 'Binance Chain', image: 'assets/images/binance.png'),
  Wallet(title: 'SafePal', image: 'assets/images/safe1.png'),
  Wallet(title: 'Coin98', image: 'assets/images/coin98.png'),
];
