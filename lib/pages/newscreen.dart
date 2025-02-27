import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:telasteste/components/uploadbutton.dart';
import 'package:telasteste/pages/login_page.dart';
import 'package:telasteste/pages/profile.dart';

class UploadScreen extends StatefulWidget {
  final String email;
  final String senha;

  const UploadScreen({
    super.key,
    required this.email,
    required this.senha,
  });

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<UploadScreen> {
  List<String> uploadedFiles = [];
  List<String> previousFiles = [];

  @override
  Widget build(BuildContext context) {
    Future<void> pickFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        setState(() {
          uploadedFiles.add(result.files.single.name);
        });
      }
    }

    void removeFile(int index) {
      setState(() {
        uploadedFiles.removeAt(index);
      });
    }

    void clearFiles() {
      setState(() {
        uploadedFiles.clear();
      });
    }

    void submitFiles() {
      setState(() {
        previousFiles.addAll(uploadedFiles);
        uploadedFiles.clear();
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 16,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 49, 87, 153),
                  const Color.fromARGB(255, 114, 183, 240),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 211, 211, 211),
                      width: 1.5),
                ),
              ),
              child: AppBar(
                title: Text(
                  "👋 Bem-vindo (a)",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                            email: widget.email, // Passando o email
                            senha: widget.senha, // Passando a senha
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 50)
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      right: BorderSide(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        width: 1.5,
                      ),
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        width: 1.5,
                      ),
                    ),
                  ),
                  height: 460,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: 500,
                        color: const Color.fromARGB(255, 33, 150, 243),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: clearFiles,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  backgroundColor:
                                      const Color.fromARGB(255, 33, 150, 243),
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Anexar Arquivos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: const Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 218, 218, 218),
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: clearFiles,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Ver histórico',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: clearFiles,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero),
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  elevation: 0,
                                ),
                                child: const Text(
                                  'Configuração',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: const Color.fromARGB(255, 211, 211, 211),
                        width: 1.5,
                      ),
                    ),
                  ),
                  height: 460,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          UploadButton(onTap: () => pickFile()),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (uploadedFiles.isNotEmpty) ...[
                                  SizedBox(height: 80),
                                  SizedBox(
                                    child: Text(
                                      'Itens anexados',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 185,
                                    width: 904,
                                    child: Scrollbar(
                                      thumbVisibility: true,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: uploadedFiles.map((file) {
                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    file,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.delete,
                                                      color: Colors.red),
                                                  onPressed: () => removeFile(
                                                      uploadedFiles
                                                          .indexOf(file)),
                                                ),
                                              ],
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16, right: 16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 109, 109, 109)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SizedBox(
                                  child: ElevatedButton(
                                    onPressed: clearFiles,
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      backgroundColor: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      foregroundColor:
                                          const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: const Text(
                                      "Limpar Anexos",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: submitFiles,
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 0, 0),
                                    foregroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: const Text("Enviar"),
                                ),
                              ),
                              SizedBox(
                                width: 135,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        right: BorderSide(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          width: 1.5,
                        ),
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 35, left: 65, bottom: 20),
                                child: Text(
                                  'Itens anexados anteriormente',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 3,
                                    mainAxisSpacing: 3,
                                    childAspectRatio: 3,
                                  ),
                                  itemCount: previousFiles.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 20,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      margin:
                                          EdgeInsets.only(left: 65, right: 65),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              previousFiles[index],
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                icon: Icon(Icons.download,
                                                    color: Colors.blue,
                                                    size: 16),
                                                onPressed: () {},
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.delete,
                                                    color: Colors.red,
                                                    size: 16),
                                                onPressed: () {
                                                  setState(() {
                                                    previousFiles
                                                        .removeAt(index);
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
