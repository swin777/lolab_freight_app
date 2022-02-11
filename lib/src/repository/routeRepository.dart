import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lolab_freight_app/src/models/route/protoResponse.v1_5_6.pbserver.dart';
import 'package:lolab_freight_app/src/models/route/route_info.dart';
import 'package:lolab_freight_app/src/models/route/route_point.dart';
import 'package:lolab_freight_app/src/utils/projection.dart';
import 'package:proj4dart/proj4dart.dart';
import 'package:maplibre_gl/mapbox_gl.dart';

class RouteResitory extends GetConnect {
  static RouteResitory get to => Get.find();

  Future<RouteInfo?> getRoute(double startLat, double startLng, double endLat, double endLng) async{
    Point p1 = latlngToUtmk(startLat, startLng);
    Point p2 = latlngToUtmk(endLat, endLng);
    String start = '${p1.x.toString()},${p1.y.toString()}';
    String end = '${p2.x.toString()},${p2.y.toString()}';
    String param = 'start=${start}&end=${end}&rp_type=0&startName=start&endName=end';

    final response = await http.post(Uri.parse('https://gis.kt.com/sdk/route/v1.56'),
        headers: {
          'Authorization': 'Bearer 9886c37a33aca43c88541d669306b8fc431a710760ba0982c524eb30223ecbf657f880a9',
          'key': '9886c37a33aca43c88541d669306b8fc431a710760ba0982c524eb30223ecbf657f880a9',
          'Content-Type': 'application/x-www-form-urlencoded',
          'responseType': 'arraybuffer',
        },
        body: param,
    );
    Routes iRoutes = Routes.fromBuffer(response.bodyBytes);
    
    double minX = 9999999, minY = 9999999, maxX = -9999999, maxY = -9999999;
    List<RoutePoint> pointArr = [];
    int num = 0;
    iRoutes.routes.asMap().entries.forEach((MapEntry<int, Route>element) {
      //int idx = element.key;
      Route route = element.value;
      RoutePoint? beforeMatchRoute;
      RoutePoint? b_beforeMatchRoute;
      route.links.asMap().entries.forEach((MapEntry<int, Link>element) { 
        int linkIdx = element.key;
        Link link = element.value;
        List<dynamic> nodes = link.nodes.sublist(0, link.nodes.length-1);
        nodes.asMap().entries.forEach((MapEntry<int, dynamic> element) {
          int nodeIdx = element.key;
          dynamic node = element.value;
          Point p = utmkTolatlng(node.x, node.y);
          RoutePoint rp = RoutePoint(x: node.x, y:node.y, lat:p.y, lng:p.x);
          num++;
          node.x<minX ? minX=node.x : minX=minX;
          node.y<minY ? minY=node.y : minY=minY;
          node.x>maxX ? maxX=node.x : maxX=maxX;
          node.y>maxY ? maxY=node.y : maxY=maxY;
          rp.linkNum = linkIdx;
          rp.nodeNum = nodeIdx;
          rp.linkPart = 'c';
          if(nodeIdx==0){
              rp.roadName = link.roadName;
              rp.linkPart = 's';
          }
          if(nodes.length-1 == nodeIdx){
              rp.linkPart = 'e';
          }
          List<Tbt> tbtList = route.tbts.where((tbt) => tbt.tbtLinkX==node.x && tbt.tbtLinkY==node.y).toList();
          if(tbtList.isNotEmpty){
            if(beforeMatchRoute!=null){
              beforeMatchRoute!.tbt = tbtList[0];
            }
            if(b_beforeMatchRoute!=null){
              b_beforeMatchRoute!.farTbt = tbtList[0];
            }
            b_beforeMatchRoute = beforeMatchRoute;
            beforeMatchRoute = rp;
          }
          rp.num = num;
          pointArr.add(rp);
        });
      });
    });
    Point min = utmkTolatlng(minX, minY);
    Point max = utmkTolatlng(maxX, maxY);
    return Future.value(
      RouteInfo(northeast:LatLng(max.y, max.x), southwest:LatLng(min.y, min.x), routePoints: pointArr)
    );
  }
}

//route.lanes, route.roadView.urlPattern route.roadView.files route.tbts.