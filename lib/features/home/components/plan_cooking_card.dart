part of home;

class _PlanCookingCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;
  final String level;

  const _PlanCookingCard({
    required this.imageUrl,
    required this.name,
    required this.time,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 240,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                  bottom: Radius.circular(20),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      ColorResources.kTroutColor,
                      ColorResources.kTunaColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.01,
                            color: ColorResources.kTitanWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              time,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.01,
                                color: ColorResources.kTitanWhiteColor
                                    .withOpacity(0.3),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.01,
                                color: ColorResources.kTitanWhiteColor
                                    .withOpacity(0.3),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              level,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.01,
                                color: ColorResources.kTitanWhiteColor
                                    .withOpacity(0.3),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            ColorResources.kMauveColor,
                            ColorResources.kCornFlowerBlue,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0, 1],
                        ),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
