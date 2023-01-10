import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_card.dart';
import '../widget/custom_carousel_slider.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
/*   Future<Movies> fetchMovies() async {
    final response = await http.get(Uri.parse(Constants.movieApi));
    switch (response.statusCode) {
      case HttpStatus.ok:
        return Movies.fromJson(json.decode(response.body));
      default:
        throw Exception('Failed to load movies');
    }
  }

  Future loadMovies() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await fetchMovies();
    } on SocketException catch (e) {
      e.toString();
    }
  } */

  @override
  void initState() {
    super.initState();
  }

  Iterable<Widget> source = [
    const CustomCard(),
    const CustomCard(),
    const CustomCard(),
  ];
  @override
  Widget build(BuildContext context) {
    const assetName = 'assets/images/png/ic_profile.png';
    const data = 'Tangerang Selatan';
    var name = 'assets/images/png/carbon_location.png';
    return Scaffold(
      backgroundColor: Constants.bg2Color,
      appBar: CustomAppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              assetName,
              scale: .5,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        assetName: assetName,
        name: name,
        data: data,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _emptySizedBox(),
            const Center(
              child: SliderCard(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _textRow(context),
                  const SizedBox(height: 29),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 210,
                        child: _movieCardList(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Divider(
                      color: Constants.whiteColor.withOpacity(.2),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      "Voucher Deals",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Constants.whiteColor,
                            fontFamily: Constants.fontFamily,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView _movieCardList() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        const url = "https://flxt.tmsimg.com/assets/p11682476_b_v13_ae.jpg";
        return Padding(
          padding: EdgeInsets.only(right: 14.0),
          child: ClipRRect(
            child: CustomCard(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    url,
                  ),
                ),
              ),
              height: 210,
              width: 147,
            ),
          ),
        );
      },
    );
  }

  Row _textRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          "Sedang Tayang",
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Constants.whiteColor,
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
        ),
        const Spacer(),
        AutoSizeText(
          "Lihat Semua",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Constants.whiteColor.withOpacity(.6),
                fontFamily: Constants.fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 10,
                letterSpacing: 0.5,
              ),
        ),
        const SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
            "assets/images/png/arrow_right.png",
          ),
        ),
      ],
    );
  }
}

class _emptySizedBox extends StatelessWidget {
  const _emptySizedBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 46,
    );
  }
}
