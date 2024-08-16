import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/drink.dart';

class CartItem extends StatefulWidget {
  Drink drink;
  CartItem({
    super.key,
    required this.drink,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.drink);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.drink.imagePath),
      title: Text(widget.drink.name),
      subtitle: Text(widget.drink.price),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: removeItemFromCart,
      ),
    );
  }
}
