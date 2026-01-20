import 'package:flutter/material.dart';

class lesson8 extends StatefulWidget {
  const lesson8({super.key});

  @override
  State<lesson8> createState() => _lesson8State();
}

class _lesson8State extends State<lesson8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lesson8')),
      body: SingleChildScrollView( 
        //SingleChildScrollView нужен для того что бы если на экрана будет очень много обьектов , для того что бы ошибки не было и можно было скролить
        child: Column(
          children:[
          Container(color: Colors.deepPurple , height: 200),
          Divider( //Divider это линия котороя разляеть обьекты 
            thickness: 4, // thickness параметр который отвечает за тольшину линии
            height: 0, // height отвечает за отступы с верху и с низу 
            color: Colors.black, // ответчает за цвет 
            indent: 16, // отвечает за отступы слева
            endIndent: 16, // отвечает за отступы справа 
          ),

          ListTile(// это готовы шаблон для элементов списков
            minVerticalPadding: 10, //отступы для картинок
            leading: Image.asset('name'),
            title: Text('Avatar' , style: TextStyle(fontSize: 20), ),
            subtitle: Text('Мелодрамма'),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
            onTap: (){ // эфект нажатия на кнопки
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_)=>FilmsScreen() )
                 )

            },
          
          ),
          InkWell(
            onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_)=>FilmsScreen() )
                 )
            }
            ,),



           Card(// Карточка с теню и скруглеными углами . Используеться для визуального группирования элементов
           elevation: 10,// отвечает за уровень теня  
           color: Colors.lime ,
           shadowColor: Colors.red, // отвечает за цвет теня
           child:Column(
            children:[
              Text(
                'Новость для',
                 style:
                  TextStyle(
                    fontWeight :FontWeight.bold,fontSize :4 
                    ),
                  ),
              SizedBox(height: 16,),
              Text('Сегодня произошло важное событие'),
            ]
          ),

         

          ) ,
          SizedBox(height: 40,),

          ElevatedButton(
            onPressed: ()
            {
              Navigator.pushNamed(context, '/films')
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (_)=>FilmsScreen() )
              //    );

            },
             child: Text('Перейти')
             )
          // Container(color: Colors.deepOrange, height: 200),
          // Container(color: Colors.cyan, height: 200),
          // Container(color: Colors.limeAccent, height: 200),
          // Container(color: Colors.redAccent, height: 200),
        ]),
      ),
    );
  }
}