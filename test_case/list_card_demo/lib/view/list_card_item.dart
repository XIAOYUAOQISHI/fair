import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class ListCardItem extends StatefulWidget {
  dynamic data;
  ListCardItem({Key key,this.data}) : super(key: key);
  @override
  State<ListCardItem> createState() => _ListCardItemState();
}
class _ListCardItemState extends State<ListCardItem> {
  @FairProps()
  var fairProps;
  String nickName;
  String nameIcon;
  String contentText;
  String contentImg;
  String likeNum;
  String commentNum;
  String commentText;


  @override
  void initState() {
    super.initState();
    fairProps = widget.data;
    nickName=fairProps["nickName"];
    nameIcon=fairProps["nameIcon"];
    contentText=fairProps['contentText'];
    contentImg=fairProps["contentImg"];
    likeNum=fairProps["likeNum"];
    commentNum=fairProps["commentNum"];
    commentText=fairProps["commentText"];
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: Sugar.netWorkImage(nameIcon),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(nickName,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black),
                    )
                  ],
                )),
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/more.png'),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    contentText,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.black),
                  ))
                ],
              ),
            ),
            Card(
              child: Image(
                image: Sugar.netWorkImage(contentImg),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/like.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        likeNum,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/images/comment.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        commentNum,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black54),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/share-one.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}
