
import 'package:flutter/material.dart';



import '../../utils/constant.dart';
import '../../utils/constant.dart';
import '../Insurance/InsurancePage.dart';
import '../ScanPhoto/ScanPhotoPage.dart';
import 'HomePage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

/*  List pages =[
    const HomePage(),
    const InsurancePage(),
    //const BarcodePage(),
    const ScanPhotoPage(),
    //const SearchPage(),
    //const MyPage(),
  ];

  int currentIndex = 0;

  void onTap( int index){
    setState((){
      currentIndex = index;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      /*body:  pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //unselectedFontSize: 0,
       // selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        //showSelectedLabels: true,
       // showUnselectedLabels: true,
        elevation: 0,

        items: const [
          BottomNavigationBarItem(label: ("Home") ,icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: ("Insurance") ,icon: Icon(Icons.work)),
         // BottomNavigationBarItem(label: ("Qr Scan") ,icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: ("Photo Scan") ,icon: Icon(Icons.camera)),
          //BottomNavigationBarItem(label: ("Search") ,icon: Icon(Icons.search)),
          //BottomNavigationBarItem(label: ("MyPage") ,icon: Icon(Icons.person)),
        ],
      ),

      */

      body: Column(
        children: [
          Container(
            child: Image.asset("assets/tree.jpg",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          Expanded(
            child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>InsurancePage()));
                        },
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.work,size: 50,color: Colors.white,),
                              Text("Insurance",style: TextStyle(color: Colors.white,fontSize: 30),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home,size: 50,color: Colors.white,),
                              Text("Home",style: TextStyle(color: Colors.white,fontSize: 30),)
                            ],),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPhotoPage()));
                        },
                        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera,size: 50,color: Colors.white,),
                              Text("Photo Scan",style: TextStyle(color: Colors.white,fontSize: 30),)
                            ],),
                        ),
                      ),
                    ],
                  ),
                ),

            ),
        ],
      ),
      );

  }
}
