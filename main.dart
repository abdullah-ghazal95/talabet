void main() {
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'status': 'ready', 'item': 'burger'},
    {'id': 2, 'status': 'canceled', 'item': 'pizza'},
    {'id': 3, 'status': 'ready', 'item': 'fries'},
    {'id': 4, 'status': 'ready', 'item': 'nuggets'},
    {'id': 5, 'status': 'vip', 'item': 'steak'},
    {'id': 6, 'status': 'ready', 'item': 'salad'},
  ];

  for (int i = 0; i < orders.length; i++) {
    var order = orders[i];

    if (order['status'] == 'canceled') {
      continue;
    }

    if (order['status'] == 'vip') {
      print(' VIP order detected! Prioritize order ID: ${order['id']}');
      break;
    }

    print('Processing Order ID: ${order['id']}');

    if (order['id'] == 4) {
      print(' Order ID 4 is taking too long! Alert the kitchen!');
    }

    switch (order['item']) {
      case 'burger':
        print(' Preparing a delicious burger.');
        break;
      case 'pizza':
        print(' Getting a hot pizza ready.');
        break;
      case 'fries':
        print(' Frying some crispy fries.');
        break;
      case 'nuggets':
        print(' Cooking some tasty nuggets.');
        break;
      default:
        print(' Unknown item: ${order['item']}');
    }

    print('----------------------------------------');
  }
}
