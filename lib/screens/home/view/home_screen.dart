import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/screens/cart/bloc/cart_bloc.dart';
import 'package:pizza_app/screens/home/view/details_screen.dart';
import 'package:pizza_app/utility/constants/enums/project_radius.dart';
import 'package:pizza_app/utility/constants/padding/project_padding.dart';
import 'package:pizza_app/screens/auth/blocs/sign_in_bloc/sign_in_bloc.dart';

import '../blocs/get_pizza_bloc/get_pizza_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const CartScreen(),
                //     ));

                context.read<CartBloc>().add(GetCart());
              },
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
            IconButton(
              onPressed: () {
                // context.read<AuthenticationBloc>().userRepository.logOut();
                context.read<SignInBloc>().add(const SignOutRequired());
              },
              icon: const Icon(Icons.logout),
            ),
          ],
          title: Text(
            'SHOP',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          leading: Image.asset(
            'assets/8.png',
            scale: 20,
          ),
        ),
        body: BlocBuilder<GetPizzaBloc, GetPizzaState>(
          builder: (context, state) {
            if (state is GetPizzaSuccess) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 9 / 16,
                ),
                itemCount: state.pizzas.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(ProjectRadius.large.value),
                      color: Colors.white,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(ProjectRadius.large.value),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(pizza: state.pizzas[index]),
                              ));
                        },
                        child: Column(
                          children: [
                            Image.network(
                              state.pizzas[index].picture,
                              fit: BoxFit.cover,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(ProjectRadius.small.value),
                                  ),
                                  child: Padding(
                                    padding: const ProjectPadding.horizontalSmall(),
                                    child: Text(
                                      state.pizzas[index].isVeg ? "VEG" : "NON-VEG",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(.2),
                                    borderRadius: BorderRadius.circular(ProjectRadius.small.value),
                                  ),
                                  child: Padding(
                                    padding: const ProjectPadding.horizontalSmall(),
                                    child: Text(
                                      "${state.pizzas[index].spicy}",
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(state.pizzas[index].name,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const ProjectPadding.horizontalSmall(),
                              child: Text(state.pizzas[index].description,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey.shade700, fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding: const ProjectPadding.horizontalSmall(),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("\$${state.pizzas[index].price - (state.pizzas[index].discount / 100)}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context).colorScheme.primary,
                                          fontWeight: FontWeight.w400)),
                                  Text("\$${state.pizzas[index].price}.00",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.lineThrough)),
                                  IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.add_circled_solid))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            if (state is GetPizzaLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text("Something went wrong!"),
              );
            }
          },
        ));
  }
}
