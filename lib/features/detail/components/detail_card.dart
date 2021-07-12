part of detail;

class _DetailCard extends StatelessWidget {
  const _DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 270,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: _buildBlur(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height - 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              ColorResources.kBrightGrayColor.withOpacity(0.8),
                              ColorResources.kCharadeColor.withOpacity(0.8),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0, 1],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 40,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                _DetailHeader(),
                                SizedBox(height: 20),
                                _IngredientsCard(),
                                SizedBox(height: 20),
                                _InstructionsCard(),
                                SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.only(right: 36),
                        child: _IconBookmark()),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 42,
            left: 23,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: _buildBlur(
                borderRadius: BorderRadius.circular(255),
                child: _IconBack(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlur({
    required Widget child,
    BorderRadius? borderRadius,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: sigmaX,
            sigmaY: sigmaY,
          ),
          child: child,
        ),
      );
}
