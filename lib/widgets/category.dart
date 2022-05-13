import 'package:flutter/material.dart';
import 'package:otomax/model/product.dart';
import 'package:otomax/repository.dart';
import 'package:otomax/model/rec.dart';
import 'package:otomax/widgets/product_by_category.dart';
import 'package:otomax/theme.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Rec> _listRec = [];
  List<ProductModel> productList = [];
  Repository repository = Repository();

  getData() async{
    var temp = await repository.getCategory();
    //print(temp);
    setState(() {
      _listRec = temp;
    });
  }

  @override
  void initState(){
    getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child: ListView.builder(
          itemCount: _listRec.length,
          itemBuilder: (context, index){
           return ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: GestureDetector(
              onTap: ((){
                Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  //builder: (context) => ProductList(productList: productList, text: _listRec[index].merek,),
                  builder: (context) => ProductByCategory(id: _listRec[index].id, text: _listRec[index].merek,),
                ));
              }),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 15,
                      color: Color(0xff616161).withOpacity(0.06),
                    )
                  ],
                ),
              height: 100,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.network(repository.getBaseUrl("logo.php?name=")+_listRec[index].foto_merek, width: 60,),
                    SizedBox(
                      width: 25,
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _listRec[index].merek,
                          style: blackTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.chevron_right_outlined,
                    ),
              ],
            ),
          ),
        ),
      ),
            ) 
    );
          },
        )
         ,
          )
    )
    );
  }
}