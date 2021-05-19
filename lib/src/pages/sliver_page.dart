import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  renderColor(index) {
    var colors = [
      Colors.redAccent,
      Colors.orangeAccent,
      Colors.yellowAccent,
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.indigoAccent,
      Colors.purpleAccent
    ];
    return colors[index % colors.length];
  }

  renderSliverGrid() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            color: renderColor(index),
            height: 100,
            child: Center(
                child: Text("양인옥 핵바보 메롱", style: TextStyle(fontSize: 20),)),
          );
        },
        childCount: 32,
      ),
      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 200.0
      // ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4
      ),
    );
  }

  renderSliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Container(
              color: renderColor(index),
              height: 100,
              child: Center(
                  child: Text("김범준 메롱", style: TextStyle(fontSize: 20),)),
            );
          },
          childCount: 20
      ),
    );
  }

  renderSliverAppbar() {
    return SliverAppBar(
      expandedHeight: 250,
      //pinned: true,
      floating: true,
      flexibleSpace: Image.network(
        "https://yt3.ggpht.com/ytc/AAUvwnhXW_AiWCgbztaGTQWkpH56AHFhovdMzREKFYHs=s176-c-k-c0x00ffffff-no-rj",
        fit: BoxFit.cover,),
      title: Text("김희태 천재"),
      backgroundColor: Colors.greenAccent,
    );
  }

  renderHeader() {
    return SliverPersistentHeader(
      pinned: true,
        delegate: _SliverFixdedHeader(
          minHeight: 75.0,
          maxHeight: 200.0,
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text("김하늘 바보", style: TextStyle(fontSize: 30),),
            ),
          )
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          renderSliverAppbar(),
          renderHeader(),
          renderSliverGrid(),
          renderSliverList(),
          renderHeader(),
          renderSliverGrid(),
          renderSliverList(),
        ],
      ),
    );
  }
}

class _SliverFixdedHeader extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  _SliverFixdedHeader({
    @required this.maxHeight,
    @required this.minHeight,
    @required this.child,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    // TODO: implement build
    return SizedBox.expand(child: child,);
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => this.minHeight;

  @override
  bool shouldRebuild(_SliverFixdedHeader oldDelegate,) {
    // TODO: implement shouldRebuild
    return oldDelegate.maxHeight != this.maxHeight ||
        oldDelegate.minHeight != this.minHeight ||
        oldDelegate.child != this.child;
  }

}