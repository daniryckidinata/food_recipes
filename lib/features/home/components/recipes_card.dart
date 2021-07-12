part of home;

class _RecipesCard extends StatelessWidget {
  final String imageUrl;
  final String nameRecipes;
  final String totalRecipes;

  const _RecipesCard({
    required this.imageUrl,
    required this.nameRecipes,
    required this.totalRecipes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 220,
      padding: const EdgeInsets.only(bottom: 5),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
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
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 70,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameRecipes,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.01,
                            color: ColorResources.kTitanWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          totalRecipes,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.01,
                            color: ColorResources.kTitanWhiteColor
                                .withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: ColorResources.kTuna2Color.withOpacity(0.3),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.only(right: 30, bottom: 10),
                          decoration: BoxDecoration(
                            color: ColorResources.kTuna2Color.withOpacity(0.4),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Image.asset(
                imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
