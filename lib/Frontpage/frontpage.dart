import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double logoDim = maxWidth / 15;
    double logoLeftMargin = logoDim / 2;
    double expandedSize = logoDim * 11;
    double logoCircular = logoDim / 6;
    double maxHeight = MediaQuery.of(context).size.height;

    double containerMaxWidth = maxWidth - 2 * logoLeftMargin;

    double redContainerHeight = containerMaxWidth / 8;
    double containerCircular = redContainerHeight / 8;

    double fontSize = maxWidth / 50;
    double container2Height = logoDim + ((1 / 2) * logoDim);
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: maxHeight,
              color: Color.fromARGB(255, 255, 227, 227),
              child: Expanded(
                  child: Column(
                children: [
                  //top
                  Container(
                    margin: EdgeInsets.fromLTRB(logoLeftMargin,
                        logoLeftMargin / 4, logoLeftMargin, logoLeftMargin / 4),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(logoCircular),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Image.network(
                                  'data:image/png;base64,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'),
                              width: logoDim, // Set the width of the image
                              height: logoDim, // Set the height of the image
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          width: expandedSize,
                        )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(logoCircular),
                          child: Align(
                            alignment: Alignment
                                .centerRight, // Mengatur widget rata ke kanan
                            child: Container(
                              width: logoDim, // Set the width of the image
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/4649/4649082.png',
                                width: logoDim, // Set the width of the image
                                height: logoDim,
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(logoCircular),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Image.network(
                                'data:image/png;base64,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',
                                width: logoDim, // Set the width of the image
                                height: logoDim,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //container 1
                  Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(containerCircular),
                      color: Color.fromARGB(255, 251, 51, 51),
                    ),
                    width: containerMaxWidth,
                    height: containerMaxWidth / 6,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 400,
                              height: 30,
                              margin: EdgeInsets.fromLTRB(logoLeftMargin / 2,
                                  logoLeftMargin / 2, 0, logoLeftMargin / 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'HI, SYAIKHUL SHAFWAN R',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 2,
                                  wordSpacing: 2,
                                  fontSize: fontSize,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // Align children to the start (left) of the Row
                          children: [
                            //Kotak Ballance
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    logoLeftMargin / 2, 0, 0, 0),
                                width: containerMaxWidth / 2.5,
                                height: redContainerHeight -
                                    redContainerHeight * 1 / 4,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          child: Text(
                                            'Your Ballance',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          child: Text(
                                            'RP 10.184',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(255, 251, 51,
                                                51), // Membuat container menjadi lingkaran // Ganti dengan warna yang Anda inginkan
                                          ),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/109/109617.png',
                                            width:
                                                1, // Set the width of the image
                                            height: 1,
                                            color: Colors
                                                .white, // Set the height of the image
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            //kotak Bonus Ballance
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    logoLeftMargin / 2, 0, 0, 0),
                                width: containerMaxWidth / 2.5,
                                height: redContainerHeight -
                                    redContainerHeight * 1 / 4,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          child: Text(
                                            'Bonus Ballance',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          child: Text(
                                            '0',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2,
                                              logoLeftMargin / 3,
                                              0,
                                              0),
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(255, 251, 51,
                                                51), // Membuat container menjadi lingkaran // Ganti dengan warna yang Anda inginkan
                                          ),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/109/109617.png',
                                            width:
                                                1, // Set the width of the image
                                            height: 1,
                                            color: Colors
                                                .white, // Set the height of the image
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  //Container 2
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(containerCircular),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: containerMaxWidth,
                    height: logoDim + ((1 / 2) * logoDim),
                    margin: EdgeInsets.fromLTRB(
                        logoLeftMargin, logoLeftMargin / 2, logoLeftMargin, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: logoDim,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  logoLeftMargin, logoLeftMargin / 2, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'TopUp',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + logoDim / 2,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                logoLeftMargin,
                                logoLeftMargin / 2,
                                0,
                                0,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                        child: Text(
                                          'SendMoney',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: logoDim + logoDim / 2,
                                height: logoDim,
                                margin: EdgeInsets.fromLTRB(
                                    logoLeftMargin, logoLeftMargin / 2, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2, 0, 0, 0),
                                          width: container2Height -
                                              container2Height * 1 / 2,
                                          height: container2Height -
                                              container2Height * 1 / 2,
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                            width: container2Height -
                                                container2Height * 1 / 10,
                                            height: container2Height -
                                                container2Height * 1 / 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Text(
                                            'TicketCode',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 2,
                                              wordSpacing: 2,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + 20,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  0, logoLeftMargin / 2, logoLeftMargin, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'More',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //c3
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(containerCircular),
                    ),
                    width: containerMaxWidth,
                    height: logoDim + ((1 / 2) * logoDim),
                    margin: EdgeInsets.fromLTRB(
                        logoLeftMargin, logoLeftMargin / 2, logoLeftMargin, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: logoDim,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  logoLeftMargin, logoLeftMargin / 2, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + logoDim / 2,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                logoLeftMargin,
                                logoLeftMargin / 2,
                                0,
                                0,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: logoDim + logoDim / 2,
                                height: logoDim,
                                margin: EdgeInsets.fromLTRB(
                                    logoLeftMargin, logoLeftMargin / 2, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2, 0, 0, 0),
                                          width: container2Height -
                                              container2Height * 1 / 2,
                                          height: container2Height -
                                              container2Height * 1 / 2,
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                            width: container2Height -
                                                container2Height * 1 / 10,
                                            height: container2Height -
                                                container2Height * 1 / 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2, 2, 0, 0),
                                          child: Text(
                                            'Button',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 2,
                                              wordSpacing: 2,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + 20,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  0, logoLeftMargin / 2, logoLeftMargin, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(containerCircular),
                    ),
                    width: containerMaxWidth,
                    height: logoDim + ((1 / 2) * logoDim),
                    margin: EdgeInsets.fromLTRB(
                        logoLeftMargin, logoLeftMargin / 2, logoLeftMargin, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: logoDim,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  logoLeftMargin, logoLeftMargin / 2, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + logoDim / 2,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                logoLeftMargin,
                                logoLeftMargin / 2,
                                0,
                                0,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: logoDim + logoDim / 2,
                                height: logoDim,
                                margin: EdgeInsets.fromLTRB(
                                    logoLeftMargin, logoLeftMargin / 2, 0, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2, 0, 0, 0),
                                          width: container2Height -
                                              container2Height * 1 / 2,
                                          height: container2Height -
                                              container2Height * 1 / 2,
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                            width: container2Height -
                                                container2Height * 1 / 10,
                                            height: container2Height -
                                                container2Height * 1 / 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              logoLeftMargin / 2, 2, 0, 0),
                                          child: Text(
                                            'Button',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              letterSpacing: 2,
                                              wordSpacing: 2,
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: logoDim + 20,
                              height: logoDim,
                              margin: EdgeInsets.fromLTRB(
                                  0, logoLeftMargin / 2, logoLeftMargin, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 0, 0, 0),
                                        width: container2Height -
                                            container2Height * 1 / 2,
                                        height: container2Height -
                                            container2Height * 1 / 2,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/5405/5405811.png',
                                          width: container2Height -
                                              container2Height * 1 / 10,
                                          height: container2Height -
                                              container2Height * 1 / 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            logoLeftMargin / 2, 2, 0, 0),
                                        child: Text(
                                          'Button',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 2,
                                            wordSpacing: 2,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(containerMaxWidth / 24),
                      child: Container(

                        width: containerMaxWidth * 5 / 6,
                        height: containerMaxWidth / 4,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
