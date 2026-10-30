
import 'package:flutter/material.dart';
import 'package:untitled1/profile_screen/profile_screen.dart';
import 'package:untitled1/widget/profile_item.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchDefultValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',
          style: TextStyle(
            fontSize: 24,fontWeight: FontWeight.w700,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItem(
               Icons.person,
              'Edit profile',
            null,

          ),
          ProfileItem(
            Icons.key,
            'Change Password',
            null
          ),
          ProfileItem(Icons.wallet,
              'My Cards',
              null,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
            child: Text('App Settings',
              style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w700,
                color: Color(0xffFF5E00),
              ),
            ),
          ),
          SwitchListTile(value: switchDefultValue,
              onChanged: (value){
               setState(() {
                 switchDefultValue=value;
               });
              },
            activeTrackColor: Color(0xffFF5E00),
            secondary: Icon(Icons.notifications,color: Color(0xff906233),),
            title: Text('Notifications',
              style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.w700,
                color:Color(0xff906233)
              ),
            ),

          ),
          ProfileItem(
              Icons.translate,
              'Language',
              null
          ),
          ProfileItem(
              Icons.logout,
              'logout',
              null
          ),
        ],
      ),
    );
  }
}
