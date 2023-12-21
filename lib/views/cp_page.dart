// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carteira_parceira/widgets/cp_button.dart';
import 'package:flutter/material.dart';
import 'package:carteira_parceira/widgets/cp_colors.dart';

class CpPage extends StatefulWidget {
  const CpPage({super.key});

  @override
  State<CpPage> createState() => _CpPageState();
}

class _CpPageState extends State<CpPage> {
  //Variáveis para configuração o botão de visibilidade de senha
  bool obscureText = true;
  IconData? iconPassword = Icons.visibility;

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
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Senha",
                    hintStyle:
                        const TextStyle(color: Color(0xFF989898), fontSize: 14),
                    //configurando botão de visibilidade de senha
                    suffixIcon: IconButton(
                      onPressed: () {
                        if (obscureText == true) {
                          setState(() {
                            obscureText = false;
                            iconPassword = Icons.visibility_off;
                          });
                        } else {
                          setState(() {
                            obscureText = true;
                            iconPassword = Icons.visibility;
                          });
                        }
                      },
                      icon: Icon(iconPassword),
                      color: AppColors.secundarycolor,
                    ),
                  ),
                  obscureText: obscureText,
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 24),
              //button entrar
              const CpButton(descricao: 'Entrar'),
              const SizedBox(height: 8),
              //button cadastrar-se
              const CpButton(descricao: 'Cadastrar-se'),
              const SizedBox(height: 10),
              //button esqueceu a senha
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
