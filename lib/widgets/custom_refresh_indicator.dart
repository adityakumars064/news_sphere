import 'package:news_sphere/constants/export.dart';


class CustomRefreshIndicator extends StatelessWidget {
  RefreshController? refreshController;
  Function()? onLoad;
  Widget? child;
  CustomRefreshIndicator({required this.refreshController,this.onLoad,this.child});

  @override
  Widget build(BuildContext context) {
    return  SmartRefresher(
        controller: refreshController!,
        onLoading: onLoading,
        onRefresh: onRefresh,
        child:child);
  }

  onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    if(onLoad!=null){
      onLoad!();
    }

    refreshController?.refreshCompleted();
  }

  onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));

    refreshController?.loadComplete();
  }
}