import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  text: 'Olá, ',
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                      text: 'Gustavo',
                      style: TextStyles.titleBoldBackground
                    )
                  ]
                )
              ),
              subtitle: Text('Mantenha suas contas em dia',
                style: TextStyles.captionShape
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          )
        ),
      ),
      body: pages[controller.currentIndex],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){
                controller.setPage(0);
                setState(() {
                  
                });
              }, 
              icon: Icon(
                  Icons.home_rounded, 
                  color: AppColors.primary,
                )
              ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/barcode_scanner');
              },
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
              onPressed: (){
                controller.setPage(1);
                setState(() {
                  
                });
              }, 
              icon: Icon(
                  Icons.description_outlined,
                  color: AppColors.body,
                )
              ),
          ],
        ),
      ),
    );
  }
}