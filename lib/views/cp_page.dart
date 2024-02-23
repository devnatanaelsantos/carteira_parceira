import 'package:carteira_parceira/controllers/cp_controller.dart';
import 'package:carteira_parceira/widgets/cp_button.dart';
import 'package:flutter/material.dart';
import 'package:carteira_parceira/widgets/cp_colors.dart';

class CpPage extends StatefulWidget {
  const CpPage({super.key});

  @override
  State<CpPage> createState() => _CpPageState();
}

class _CpPageState extends State<CpPage> {
  CpController cpController = CpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('lib/assets/images/logo.png')),
              ),
              const SizedBox(height: 150),
              //text box e-mail
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "E-mail",
                    hintStyle:
                        const TextStyle(color: Color(0xFF989898), fontSize: 14),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 8),
              //text box senha
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ValueListenableBuilder(
                  valueListenable: cpController.obscureText,
                  builder: (context, value, __) {
                    return TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Senha",
                        hintStyle: const TextStyle(
                            color: Color(0xFF989898), fontSize: 14),
                        //configurando botão de visibilidade de senha
                        suffixIcon: IconButton(
                          onPressed: () {
                            cpController.hidePassword();
                          },
                          icon: Icon(cpController.iconPassword),
                          color: AppColors.secundarycolor,
                        ),
                      ),
                      obscureText: cpController.obscureText.value,
                      textAlign: TextAlign.left,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const CpButton(descricao: 'Entrar'),
              const SizedBox(
                height: 8,
              ),
              const CpButton(descricao: 'Cadastrar-se'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Esqueceu a senha?\nClique aqui!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
