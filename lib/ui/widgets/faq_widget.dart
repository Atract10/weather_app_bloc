import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/faq_list_bloc.dart';
import 'loading_indicator_widget.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FaqListBLoC, FaqListState>(
        builder: (BuildContext context, state) {
      return state.when(
        initial: () => const LoadingIndicator(),
        loaded: (faqList) => Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 20),
          child: Column(
            children: [
              Text(
                'Frequently Asked       Questions',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 35,
              ),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: faqList.length,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 55,
                              width: 379,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(247, 247, 247, 0.85),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, top: 15, bottom: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      faqList[index].question,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6,
                                    ),
                                    const Spacer(),
                                    faqList[index].isOpened
                                        ? const Icon(
                                            Icons.expand_less,
                                            size: 32,
                                          )
                                        : const Icon(
                                            Icons.expand_more,
                                            size: 32,
                                          ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () => setState(() {
                              faqList[index].isOpened =
                                  !faqList[index].isOpened;
                            }),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          if (faqList[index].isOpened)
                            Container(
                              width: 379,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(247, 247, 247, 0.85),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(faqList[index].text,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
