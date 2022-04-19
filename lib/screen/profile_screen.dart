import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget 
{
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        [
          Padding
          (
            padding: const EdgeInsets.only(top:50.0,bottom: 30.0),
            child: Text
            (
              'Profile',
              style: TextStyle
              (
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded
            (
              child: _buildProfileWidgets()
            ),
        
        ],
      )
    );
  }

  Widget _buildProfileWidgets()
  {
    return Container
    (
      // decoration: BoxDecoration
      // (
      //   color: Colors.teal[300]
      // ),
      child: ListView
      (
        children: 
        [
          _buildProfileContainer(),
          _buildPersonalDetailWidget()
        ],
      )
    );
  }

  Widget _buildProfileContainer()
  {
    return Container
    (
      height: 250,
      decoration: BoxDecoration
      (
        color: Colors.teal[300],
        borderRadius: BorderRadius.circular(20)

      ),
      child: Column
      (
        children: 
        [
            SizedBox(height: 20,),
            CircleAvatar
            (
              radius: 72,
              backgroundColor: Colors.white,
              child: CircleAvatar
              (
                radius: 70,
                backgroundColor: Colors.teal[200],
                //backgroundImage: AssetImage('images/batman.jpg'),
              ),
            ), 
            SizedBox(height: 10,),
            Text
            (
              'Patient Name',
              style: TextStyle
              (
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(height: 10,),
            Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                    Text
                   (
                     'Gender',
                      style: TextStyle
                      (
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                       )
                    ),
                    Text
                   (
                     '/',
                      style: TextStyle
                      (
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                       )
                    ),
                    Text
                   (
                     'Age',
                      style: TextStyle
                      (
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                       )
                    ),
              ],
            )
        ],
      ),
    );
  }
  Widget _buildPersonalDetailWidget()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector
      (
         onTap: ()
         {
           print('Personal Details');
         },
         child: Container
         (
           height: 130,
           decoration: BoxDecoration
           (
             color: Colors.pink[50],
             borderRadius: BorderRadius.circular(20),
             border: Border.all
             (
               width: 2.0,
               color: Color.fromARGB(255, 77, 182, 172)
             )
           ),
           child: Row
           (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: 
              [
                Padding
                (
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 25),
                  child: Center
                  (
                    child: Column
                    (
                      children: 
                      [
                        Icon
                        (
                          Icons.done
                        ),
                        SizedBox(height: 8.0,),
                        Icon
                        (
                          Icons.folder_shared,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
                Padding
                (
                  padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 25),
                  child: Column
                     (
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: 
                         [
                           Text
                           (
                             'Personal Details',
                             textAlign: TextAlign.justify,
                              style: TextStyle
                              (
                               color: Colors.black,
                               fontSize: 20
                              ),
                            ),
                           SizedBox(height: 12.0,),
                          Expanded
                          (
                            child:  Text
                             (
                               "The details will be used for subject Identification and \n also to check the eligibility of subject for any specific",
                               maxLines: 5,
                               textAlign: TextAlign.justify,
                               textDirection: TextDirection.rtl,
                               overflow: TextOverflow.clip,
                               //overflow:TextOverflow.ellipsis,
                               style: TextStyle
                               (
                                 color: Colors.black54,
                                 fontSize: 14,
                                 fontWeight: FontWeight.bold
                                ),
                             ),
                          ),
                          
                           
                         ]
                      ),
                ),
                
            
              ],
           ),
         ),
      ),
    );
  }
}