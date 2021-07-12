part of home;

class _BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<_BottomNavbar> {
  int _select = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _BottomNavbarItem(
          index: 1,
          select: _select,
          onTap: (index) {
            setState(() {
              _select = index;
            });
          },
          iconUrl: IconResources.home,
        ),
        _BottomNavbarItem(
          index: 2,
          select: _select,
          onTap: (index) {
            setState(() {
              _select = index;
            });
          },
          iconUrl: IconResources.search,
        ),
        _BottomNavbarItem(
          index: 3,
          select: _select,
          onTap: (index) {
            setState(() {
              _select = index;
            });
          },
          iconUrl: IconResources.paper,
        ),
        _BottomNavbarItem(
          index: 4,
          select: _select,
          onTap: (index) {
            setState(() {
              _select = index;
            });
          },
          iconUrl: IconResources.profile,
        ),
      ],
    );
  }
}
