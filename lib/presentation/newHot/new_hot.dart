import 'package:bloc_learn/API/relesed/func.dart';
import 'package:bloc_learn/API/top_rated/func.dart';
import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/homepage/home_page.dart';
import 'package:flutter/material.dart';

class newHotpage extends StatelessWidget {
  newHotpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            backgroundColor: scaffback,
            title: Text(
              'New & Hot',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w900, color: kWhite),
            ),
            actions: [
              Icon(
                Icons.cast,
                size: 37,
              ),
              kwidth,
              Container(
                width: 30,
                height: 30,
                color: kButnColorBlue,
              ),
              kwidth,
            ],
            bottom: TabBar(
              labelColor: kblack,
              unselectedLabelColor: kWhite,
              indicator: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(35)),
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Tab(
                    text: 'Hot and New',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Tab(
                    text: 'Everyone Watching',
                  ),
                ),
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(90),
        ),
        body: TabBarView(
          children: [
            buildComingSoon(context),
            buildCEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  List<String> date = [
    '01',
    '02',
    '03',
    '07',
    '23',
    '20',
    '15',
    '01',
    '02',
    '03',
    '07',
    '23',
    '20',
    '15',
    '01',
    '02',
    '03',
    '07',
    '23',
    '20',
    '15',
    '01',
    '02',
    '03',
    '07',
    '23',
    '20',
  ];

  Widget buildComingSoon(context) {
    List<String> month = [
      'APR',
      'MAY',
      'MAY',
      'JUN',
      'JUN',
      'JUN',
      'APR',
      'MAY',
      'MAY',
      'JUN',
      'JUN',
      'MAY',
      'MAY',
      'JUN',
      'JUN',
      'JUN',
      'APR',
      'MAY',
      'MAY',
      'JUN',
      'JUN',
      'JUN'
    ];
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: getTopRated(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 470,
                  child: Column(
                    children: [
                      Text(
                        month[index],
                        style: const TextStyle(color: kgrey),
                      ),
                      Text(
                        date[index],
                        style:const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width - 50,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: Image.network(
                              '$img${snapshot.data?[index].backdropPath}',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: CircleAvatar(
                              backgroundColor: scaffback.withOpacity(.6),
                              radius: 22,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.volume_off,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${snapshot.data?[index].title}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 30),
                            ),
                            const Row(
                              children: [
                                customButtonWidget(
                                  text: 'Remind me',
                                  icon: Icons.alarm,
                                  isize: 20,
                                  tsize: 12,
                                ),
                                kwidth,
                                customButtonWidget(
                                    text: 'Info',
                                    icon: Icons.info,
                                    isize: 20,
                                    tsize: 12),
                                kwidth,
                              ],
                            ),
                          ],
                        ),
                      ),
                      kheigh,
                      const Text('Coming on friday'),
                      Text(
                        'BY ${snapshot.data?[index].releaseDate}',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        '${snapshot.data?[index].overview}',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget buildCEveryonesWatching() {
    return FutureBuilder(
        future: getRealeased(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kheigh,
                        Text(
                          '${snapshot.data?[index].title}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '${snapshot.data?[index].overview}',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        kheigh,
                        Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Image.network(
                                '$img${snapshot.data?[index].posterPath}',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: CircleAvatar(
                                backgroundColor: scaffback.withOpacity(.6),
                                radius: 22,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.volume_off,
                                    color: kWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        kheigh,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            customButtonWidget(
                              text: 'text',
                              icon: Icons.share,
                              isize: 20,
                              tsize: 16,
                            ),
                            kwidth,
                            customButtonWidget(
                              text: 'text',
                              icon: Icons.add,
                              isize: 20,
                              tsize: 16,
                            ),
                            kwidth,
                            customButtonWidget(
                              text: 'text',
                              icon: Icons.play_arrow,
                              isize: 20,
                              tsize: 16,
                            ),
                            kwidth
                          ],
                        )
                      ],
                    );
                  },
                )
              : const Center(child: CircularProgressIndicator());
        });
  }
}
