import 'package:flutter/material.dart';

void main() {
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Myprofile(),
    );
  }
}


class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyProfileState();
}

class _MyProfileState extends State<Myprofile> {
  Color ? myColor  =  Colors.grey[10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,

      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Profile"),
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [

          ClipRRect(
            borderRadius:BorderRadius.circular(100) ,
            child: Container(
              height: 150,
              width: 150,
              //color: Colors.green,
              child: Image.network("https://cdn.pixabay.com/photo/2018/03/24/21/55/horse-3258001__340.jpg",
                width: 160,height: 160,fit: BoxFit.cover,),
               // image: NetworkImage('https://freesvg.org/img/abstract-user-flat-4.png'),
              //Image.network("https://www.google.com/search?q=background&sxsrf=ALiCzsY3h6gQDh5-WLYg0DBhutHZiQFfrA:1659444391446&tbm=isch&source=iu&ictx=1&vet=1&fir=x-lvRKo4RLNHJM%252CbKJ3gdlWTtaNoM%252C_%253BOGK30ZIVEr0OGM%252CbKJ3gdlWTtaNoM%252C_%253B6biWA5hcSFquvM%252C0YhkbdsB8sWdIM%252C_%253BVxJVqtW6GSLPIM%252CICn889JPjZ6CCM%252C_%253B2UmByNXjQ3PPEM%252CbKJ3gdlWTtaNoM%252C_%253BgqzX1TfESdsqZM%252C0aKRK2RZxWjguM%252C_%253BzUfyl7JUwahNLM%252Ci5oUTEWCwPkbrM%252C_%253BhRS-65Vi-RVWiM%252CGxvNl7wU6aGCOM%252C_%253Bv88-M_AJ_P6MCM%252CnrS8yXEy4V6zEM%252C_%253BsxwB-MqT4mabEM%252CICn889JPjZ6CCM%252C_%253B09OHEQuyd2UpFM%252Cd_KTHD6yjhtVRM%252C_%253BFXquWaTg2wbFxM%252C5pSiliwpw2eqTM%252C_%253BfJnogo37aL1wXM%252CbKJ3gdlWTtaNoM%252C_%253Bg5mAtYSOAVmH-M%252Cg5F6qfF_hKON5M%252C_&usg=AI4_-kRMqInYId5VdMueqnOLvXAqYw3jjg&sa=X&ved=2ahUKEwj7x-eLmKj5AhUqgP0HHewiDgcQ9QF6BAgQEAE#imgrc=6biWA5hcSFquvM"),
              //Image.asset("images/im1.jpeg" ,width: 200, height: 200,  fit: BoxFit.fill,),
            ),
          ),
          SizedBox( height: 40 ,),

          Text("Eslam mohamed" ,style: TextStyle( fontSize: 20 ,color: Colors.white ,fontWeight: FontWeight.bold),),
          SizedBox( height: 40 ,),

          Text(" My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile My Profile",style: TextStyle( fontSize: 18 ,color: Colors.white )),
          SizedBox( height: 20 ,),
          Divider( color:  Colors.white, thickness: .3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                  SizedBox(height: 5,),

                  Text("posts" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

                ],
              ),  Column(
                children: [
                  Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                  SizedBox(height: 5,),

                  Text("Followers" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

                ],
              ),  Column(
                children: [
                  Text("55" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),
                  SizedBox(height: 5,),


                  Text("Following" ,style: TextStyle( fontSize: 15 ,color: Colors.white ),),

                ],
              ),



            ],
          ),
          SizedBox( height: 20 ,),
          Divider( color:  Colors.white, thickness: .3,
          ),

          Container(
              width: 200,
              height: 50,
              alignment: Alignment.center,
              child:    ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(myColor)
                  ),

                  onPressed: (){
                    setState((){
                      myColor = Colors.green ;
                    });

                  }, child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person ,color: Colors.black,),
                  Text("Follow " , style: TextStyle (color: Colors.black),)

                ],
              ))
          )





















        ],
      ),
    );
  }
}
