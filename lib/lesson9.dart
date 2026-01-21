

import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson9dz.dart';

class Lesson9 extends StatefulWidget {
  const Lesson9({super.key});

  @override
  
  State<Lesson9> createState() => _Lesson9State();
}

class _Lesson9State extends State<Lesson9> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  void dispose() {
  nameController.dispose();
  lastNameController.dispose();
  super.dispose();
}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar
       (
        title:
         Text('Lesson9'),
         backgroundColor: Colors.tealAccent,
         ),
         body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Form(
            key: formKey ,
             child: Column(
              children: 
              [
                //TextField //это базовый виджет для ввода текста , можно получить значение через TextEditingController
                TextFormField // это улученный вариант TextField который работает внутри Form и поддерживает валидацию
                (
                  controller: nameController,
                  decoration: InputDecoration
                  (
                    labelText: 'Имя',//шапка для колонки 
                    hintText:'Введите имя',// подсказка для пользователя 
                    errorStyle: TextStyle(fontSize: 14) ,// для размера текста ошибок 
                    border: OutlineInputBorder
                    (
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      return 'Поля не может быть пустым !';
                    }
             
             
                    return null;
                  },
                ),
                SizedBox(height: 16),

                TextFormField(
                  controller: lastNameController ,
                  decoration: InputDecoration
                  (
                    labelText: 'Фамилия',
                    hintText: 'Введите фамилию ',
                    border: OutlineInputBorder
                    (
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty ){
                      return 'Поля не может быть пустым !';
                    }
             
             
                    return null;
                  },
                ),

                SizedBox(height: 16,),

                ElevatedButton 
                (
                 onPressed: ()
                      {
                        if(formKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Lesson9dz(
                                peopleName: nameController.text, 
                                peopleLastName: lastNameController.text
                              ),
                            ),
                          );
                        }
                      },
                  
                  child: Text('Зарегестрироваться')
                )
              ]
             ),
           ),
         ),
    );
  }
}