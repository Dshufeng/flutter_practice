import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> _desingers = [
    {
      'img':
          'https://img.zzxdc.com/resources/fang_img/2019/07/18/156341823758128.jpeg!project-zzx-common-vip-big',
      'name': '设计师'
    },
    {
      'img':
          'https://img.zzxdc.com/resources/fang_img/2019/03/06/155184350280047.jpeg!project-zzx-common-vip-big',
      'name': '设计师'
    },
    {
      'img':
          'https://img.zzxdc.com/public/2020/04/10/524JNfZs2RBhJGH.jpg!project-zzx-common-vip-big',
      'name': '设计师'
    },
    {
      'img':
          'https://img.zzxdc.com/resources/fang_img/2019/07/18/156341823758128.jpeg!project-zzx-common-vip-big',
      'name': '设计师'
    },
    {
      'img':
          'https://img.zzxdc.com/resources/fang_img/2019/03/06/155184350280047.jpeg!project-zzx-common-vip-big',
      'name': '设计师'
    },
    {
      'img':
          'https://img.zzxdc.com/public/2020/04/10/524JNfZs2RBhJGH.jpg!project-zzx-common-vip-big',
      'name': '设计师'
    },
  ];

  List<Map> _works = [
    {'img': '', 'title': '', 'author': '', 'avatar': '', 'level': '', 'vip': ''}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设计网"),
      ),
      body: ListView(
        children: <Widget>[
          SwiperWidget(),
          GridWidget(),
          TabWidget(title: "设计师"),
          Container(
            height: 420,
            // color: Colors.red,
            child: GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // 处理GridView中滑动父级Listview无法滑动
              itemCount: 6,
              padding: EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        _desingers[index]['img'],
                        fit: BoxFit.fitHeight,
                        height: 160,
                      ),
                      Text(_desingers[index]['name'])
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  childAspectRatio: 4 / 7),
            ),
          ),
          TabWidget(title: '作品'),
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      'https://img.zzxdc.com/resources/fang_img/2019/07/13/156298674021773.jpeg!works_cover',
                      width: 170.0,
                      fit: BoxFit.fitHeight,
                    ),
                    Expanded(
                      child: Container(
                        height: 115,
                        // color: Colors.red,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // mainAxisSize: MainAxisSize.max,
                          // textBaseline: TextBaseline.alphabetic,
                          // verticalDirection: VerticalDirection.down,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('标题标题标题'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 12.0,
                                  backgroundImage: NetworkImage(
                                      'https://img.zzxdc.com/resources/static/images/noavatar_middle.gif!avter_big'),
                                ),
                                Text('陌上'),
                                Image.network(
                                  'https://img.zzxdc.com/public/level/LV3.png',
                                  width: 50.0,
                                  fit: BoxFit.fitHeight,
                                ),
                                Image.network(
                                  'https://m.zzxdc.com/static/mobile/img/index/vip_reload.png',
                                  width: 50.0,
                                  fit: BoxFit.fitHeight,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.thumb_up,
                                        color: Colors.black26,
                                      ),
                                      Text('1111')
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 65,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.black26,
                                      ),
                                      Text('222')
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
            physics: NeverScrollableScrollPhysics(), //禁用滑动事件
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}

// 轮播
class SwiperWidget extends StatelessWidget {
  final List<String> _imageUrls = [
    'https://img.zzxdc.com/resources/index/f590941f05d2e87e8652c737ba3d45fb.jpg!project-zzx-pc-index-carousel',
    'https://img.zzxdc.com/resources/index/f7ef5af23a576dfaedb5ae0a40ccc291.jpg!project-zzx-pc-index-carousel',
    'https://img.zzxdc.com/resources/index/201512fb3794f4fb7b0465d7c4e6da87.jpg!project-zzx-pc-index-carousel',
    'https://img.zzxdc.com/resources/index/2e3bb68f5b33587e48418adffc3ead90.jpg!project-zzx-pc-index-carousel',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            _imageUrls[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}

// icons
class GridWidget extends StatelessWidget {
  final List<Map> _icons = [
    {
      'img': 'https://m.zzxdc.com/static/mobile/img/index/index_app/hysb_1.png',
      'text': '申报'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/course_1.png',
      'text': '课程'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/works_1.png',
      'text': '作品'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/model_1.png',
      'text': '模型'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/tietu_1.png',
      'text': '贴图'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/caizhi_1.png',
      'text': '材质'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/dengguang_1.png',
      'text': '灯光'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/shigongtu_1.png',
      'text': '施工图'
    },
    {
      'img':
          'https://m.zzxdc.com/static/mobile/img/index/index_app/shejishi_1.png',
      'text': '材质'
    },
    {
      'img': 'https://m.zzxdc.com/static/mobile/img/index/index_app/all_1.png',
      'text': '全部'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: GridView.builder(
          physics:
              NeverScrollableScrollPhysics(), // 处理GridView中滑动父级Listview无法滑动
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(2),
              // color: Colors.redAccent,
              child: Column(
                children: <Widget>[
                  Image.network(
                    _icons[index]['img'],
                    fit: BoxFit.fitWidth,
                    height: 36,
                  ),
                  Text(
                    _icons[index]['text'],
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  )
                ],
              ),
            );
          },
          itemCount: _icons.length,
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5)),
    );
  }
}

// 点击加载更多
class TabWidget extends StatelessWidget {
  final String title;
  const TabWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$title',
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.red),
      ),
      padding: EdgeInsets.all(10),
    );
  }
}
