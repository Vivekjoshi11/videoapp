import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoapp/profile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: 
          const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [Colors.pinkAccent, Colors.white],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            image: DecorationImage(
              image: AssetImage('lib/assets/images/backgroundimage.png'), 
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                const SizedBox(height: 160,),
                Image.asset(
                  'lib/assets/images/logo.png',
                  height: 250,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Single Club',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
                const SizedBox(height: 20),
                SocialButton(
                  icon: Icons.facebook,
                  text: 'Facebook',
                  color: Colors.blue,
                  onPressed: () {},
                ),
                SocialButton(
                  icon: Icons.g_mobiledata,
                  text: 'Google',
                  color: Colors.red,
                  onPressed: () {},
                ),
                SocialButton(
                  icon: Icons.phone,
                  text: 'Phone',
                  color: Colors.green,
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                     icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
                      onPressed: () {
                         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
                      },
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.purple),
                      onPressed: () {
                         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
                      },
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.purple),
                      onPressed: () {
                        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(
                      'First Read And Agree To ',
                      style: TextStyle(color: Colors.black),
                    ),
                     TextButton(
                      onPressed: () {},
                      child: const Text('Privacy Policy',
                          style: TextStyle(color: Colors.blue)),
                    ),
                    
                  ],
                ),
               
                    const Text(
                      '& ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: const Text('User Agreement',
                          style: TextStyle(color: Colors.blue)),
                    ),
                    // const SizedBox(height: 70,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onPressed;

   const SocialButton({super.key, required this.icon, required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
      width: 300,
      child:  ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.blue),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          
          foregroundColor: Colors.blue, backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            
          ),
        ),
      ),
    ),
    );
  }
}