import 'package:flutter/material.dart';

void main(){
  runApp(DLVGD());
}
class DLVGD extends StatelessWidget{
  const DLVGD({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

   MySnakeBar(message,context){
     return ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text(message))
     );
   }

  var MyItems = [
    {"img":"https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg?w=2000","title":"Laptop"},
    {"img":"https://as1.ftcdn.net/v2/jpg/02/09/90/86/1000_F_209908619_pcIfQ4fk1zwBlaL2Bs6gRT0rclY18gVo.jpg","title":"Coding"},
    {"img":"https://as1.ftcdn.net/v2/jpg/03/00/64/46/1000_F_300644686_uORUSDUT4HByc6xI8q6DidmTYEoViW4T.jpg","title":"Programming"},
    {"img":"https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/06/best-illustrator.jpg?auto=format&q=60&w=1890&h=1417.5&fit=crop&crop=faces","title":"Engineering"},
    {"img":"https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books-illustration_23-2149330605.jpg?w=2000","title":"Study"},
    {"img":"https://img.freepik.com/free-vector/young-woman-home-library-writing-with-wine_107791-5840.jpg?w=2000","title":"Library"},
    {"img":"https://img.freepik.com/free-vector/laptop-with-program-code-isometric-icon-software-development-programming-applications-dark-neon_39422-971.jpg?w=2000","title":"Laptop"},
    {"img":"https://as1.ftcdn.net/v2/jpg/02/09/90/86/1000_F_209908619_pcIfQ4fk1zwBlaL2Bs6gRT0rclY18gVo.jpg","title":"Coding"},
    {"img":"https://as1.ftcdn.net/v2/jpg/03/00/64/46/1000_F_300644686_uORUSDUT4HByc6xI8q6DidmTYEoViW4T.jpg","title":"Programming"},
    {"img":"https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/06/best-illustrator.jpg?auto=format&q=60&w=1890&h=1417.5&fit=crop&crop=faces","title":"Engineering"},
    {"img":"https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books-illustration_23-2149330605.jpg?w=2000","title":"Study"},
    {"img":"https://img.freepik.com/free-vector/young-woman-home-library-writing-with-wine_107791-5840.jpg?w=2000","title":"Library"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: Text("List View"),
      ),
      // body: ListView.builder(
      //   itemCount: MyItems.length,
      //   itemBuilder: (context,index){
      //     return GestureDetector(
      //       onLongPress: (){MySnakeBar(MyItems[index]["title"], context);},
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 210,
      //         child: Image.network(MyItems[ index]["img"]!,fit: BoxFit.fill,),
      //       ),
      //     );
      //   },
      // ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.1,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onDoubleTap: (){MySnakeBar(MyItems[index]["title"], context);},
            child: Container(
              margin: EdgeInsets.all(0),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[ index]["img"]!,fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }

}