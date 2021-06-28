import 'package:vtrakh/core.dart';

class OnBoardPage extends StatelessWidget {
  final _controller = OnBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Obx(
                () {
                  return !_controller.isLastPage
                      ? Align(
                          alignment: Alignment.topRight,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              side: BorderSide(width: 1, color: cPrimary),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Skip',
                              style: subTitleTextStyle(),
                            ),
                          ),
                        )
                      : SizedBox();
                },
              ),
              PageView.builder(
                  controller: _controller.pageController,
                  onPageChanged: _controller.selectedPageIndex,
                  itemCount: _controller.onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              _controller.onboardingPages[index].url!),
                          VericalSpacing(of: 50.0),
                          Text(
                            _controller.onboardingPages[index].text!,
                            style: cLabelTextStyle(),
                          ),
                        ],
                      ),
                    );
                  }),
              Obx(() {
                return !_controller.isLastPage
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _controller.onboardingPages.length - 1,
                            (index) => Obx(() {
                              return AnimatedContainer(
                                duration: Duration(milliseconds: 250),
                                margin: const EdgeInsets.all(4),
                                width:
                                    _controller.selectedPageIndex.value == index
                                        ? 12.0
                                        : 30.0,
                                height: 12,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: _controller.selectedPageIndex.value ==
                                          index
                                      ? cPrimary.withOpacity(0.5)
                                      : cPrimary,
                                  // shape: BoxShape.circle,
                                ),
                              );
                            }),
                          ),
                        ),
                      )
                    : Align(
                        alignment: Alignment.bottomCenter,
                        child: KVButton(
                          text: 'Let\'s Start',
                          press: () {},
                        ),
                      );
              }),
              // Positioned(
              //   right: 20,
              //   bottom: 20,
              //   child: FloatingActionButton(
              //     elevation: 0,
              //     onPressed: _controller.forwardAction,
              //     child: Obx(() {
              //       return Text(_controller.isLastPage ? 'Start' : 'Next');
              //     }),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
