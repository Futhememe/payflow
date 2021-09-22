import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({ Key? key }) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetW(
      primaryLabel: 'Escanear novamente', 
      primaryOnTap: (){}, 
      secondLabel: 'Digitar código', 
      secondOnTap: (){}, 
      title: 'Não foi possível identificar um código de barras.', 
      subtitle: 'Tente escanear novamente ou digite o código do seu boleto.'
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(color: AppColors.background,),
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            )
          ),
          body: Column(
            children: [
              Expanded(child: Container(
                color: Colors.black.withOpacity(0.6),
              )),
              Expanded(
                flex: 2,
                child: Container(
                color: Colors.transparent,
              )),
              Expanded(child: Container(
                color: Colors.black.withOpacity(0.6),
              )),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: 'Inserir código do boleto', 
            primaryOnTap: (){}, 
            secondLabel: 'Adicionar da galeria', 
            secondOnTap: (){}
          ),
        ),
      ),
    );
  }
}