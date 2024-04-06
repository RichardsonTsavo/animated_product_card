import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'animated_product_card_store.dart';

class AnimatedProductCardPage extends StatefulWidget {
  const AnimatedProductCardPage({super.key});

  @override
  State<AnimatedProductCardPage> createState() =>
      _AnimatedProductCardPageState();
}

class _AnimatedProductCardPageState extends State<AnimatedProductCardPage> {
  AnimatedProductCardStore store = AnimatedProductCardStore();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              Observer(builder: (_) {
                return AnimatedContainer(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.slowMiddle,
                  color: store.colors[store.index],
                );
              }),
              Observer(builder: (context) {
                return MouseRegion(
                  onEnter: (event) {
                    store.setIsOpen(true);
                    store.setHover();
                  },
                  onExit: (event) {
                    store.setIsOpen(false);
                    store.setHover();
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: store.isOpen ? constraints.maxWidth * 0.60 : 15,
                        height: constraints.maxHeight * 0.7,
                      ),
                      Container(
                        width: constraints.maxWidth * 0.30,
                        height: constraints.maxHeight * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: store.isOpenDelay
                                ? Radius.zero
                                : const Radius.circular(15),
                            topLeft: store.isOpenDelay
                                ? Radius.zero
                                : const Radius.circular(15),
                            topRight: const Radius.circular(15),
                            bottomRight: const Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Jordan Proto-Lyte",
                              style: TextStyle(
                                fontSize: constraints.maxWidth * 0.03,
                                color: store.colors[store.index],
                              ),
                            ),
                            Text(
                              "SUNNING COLLECTION",
                              style: TextStyle(
                                fontSize: constraints.maxWidth * 0.015,
                                color: const Color.fromARGB(255, 25, 24, 25),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: constraints.maxWidth * 0.05,
                                  right: constraints.maxWidth * 0.02),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur porttitor nisl nec porta. Donec vitae egestas metus. Nunc quis condimentum dolor. Morbi neque libero, luctus eget dolor ut, ornare dignissim eros. Nulla luctus sem at consequat interdum. Sed ultrices orci vitae nisl iaculis bibendum. Suspendisse in mi dolor. Donec nisl nisl, viverra vitae porta quis, vestibulum eget ante. Praesent id diam mattis, mattis elit non, congue risus. Donec sit amet lacus ullamcorper, vestibulum est at, porttitor ligula. Sed est ex, aliquet ut aliquam non, ultricies non diam.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.008,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Cores Disponíveis: "),
                                Row(
                                  children: List.generate(
                                    store.colors.length,
                                    (index) => Radio(
                                        value: index,
                                        groupValue: store.index,
                                        fillColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    store.colors[index]),
                                        activeColor: store.colors[index],
                                        onChanged: (value) {
                                          store.changeColor(index);
                                        }),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "R\$ 1.200",
                                  style: TextStyle(
                                    fontSize: constraints.maxWidth * 0.03,
                                    color: store.colors[store.index],
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: store.colors[store.index],
                                  ),
                                  onPressed: () {},
                                  child: const Text("Comprar",
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                          .animate(
                            autoPlay: false,
                            onInit: (controller) =>
                                store.downController = controller,
                          )
                          .moveX(
                            begin: 0,
                            end: constraints.maxWidth * 0.15,
                          ),
                      AnimatedContainer(
                        width: constraints.maxWidth * 0.30,
                        height: constraints.maxHeight * 0.7,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.slowMiddle,
                        decoration: BoxDecoration(
                          color: store.colorsContainer[store.index],
                          borderRadius: BorderRadius.only(
                            bottomRight: store.isOpenDelay
                                ? Radius.zero
                                : const Radius.circular(15),
                            topRight: store.isOpenDelay
                                ? Radius.zero
                                : const Radius.circular(15),
                            topLeft: const Radius.circular(15),
                            bottomLeft: const Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(-12, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 25,
                              top: 25,
                              child: Text(
                                "NIKE",
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: constraints.maxHeight * 0.1,
                              left: 15,
                              child: Transform.rotate(
                                angle: 25 * pi / 180,
                                child: Image.asset(
                                  store.paths[store.index],
                                  width: constraints.maxWidth * 0.28,
                                  height: constraints.maxHeight * 0.30,
                                )
                                    .animate(
                                      autoPlay: false,
                                      onInit: (controller) =>
                                          store.imageController = controller,
                                    )
                                    .rotate(duration: 200.ms),
                              ),
                            ),
                          ],
                        ),
                      )
                          .animate(
                            autoPlay: false,
                            onInit: (controller) =>
                                store.upController = controller,
                          )
                          .moveX(
                            begin: 0,
                            end: -(constraints.maxWidth * 0.15),
                          )
                    ],
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
