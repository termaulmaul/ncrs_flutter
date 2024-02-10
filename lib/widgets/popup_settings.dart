import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PopupSettings extends StatefulWidget {
  const PopupSettings({Key? key}) : super(key: key);

  @override
  _PopupSettingsState createState() => _PopupSettingsState();
}

class _PopupSettingsState extends State<PopupSettings> {
  String selectedComport = 'COM1';
  String selectedType = 'NIM';

  TextEditingController nameController = TextEditingController();
  TextEditingController botController = TextEditingController();
  TextEditingController idChatbotController = TextEditingController();
  TextEditingController hospitalNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadSettings();
  }

  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      selectedComport = prefs.getString('comport') ?? 'COM1';
      selectedType = prefs.getString('type') ?? 'NIM';
      nameController.text = prefs.getString('name') ?? '';
      botController.text = prefs.getString('bot') ?? '';
      idChatbotController.text = prefs.getString('idChatbot') ?? '';
      hospitalNameController.text = prefs.getString('hospitalName') ?? '';
    });
  }

  Future<void> saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('comport', selectedComport);
    prefs.setString('type', selectedType);
    prefs.setString('name', nameController.text);
    prefs.setString('bot', botController.text);
    prefs.setString('idChatbot', idChatbotController.text);
    prefs.setString('hospitalName', hospitalNameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Master Settings'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Comport:'),
            DropdownButton<String>(
              value: selectedComport,
              items: getComportList(),
              onChanged: (String? value) {
                setState(() {
                  selectedComport = value!;
                });
              },
              hint: const Text('Select COM Port'),
            ),
            const SizedBox(height: 16),
            const Text('Name:'),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Bot:'),
            TextField(
              controller: botController,
              decoration: const InputDecoration(
                labelText: 'Enter API Key Bot Telegram',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('ID Chat:'),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: idChatbotController,
                    decoration: const InputDecoration(
                      labelText: 'Enter ID Chatbot',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: hospitalNameController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Hospital Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Type:'),
            DropdownButton<String>(
              value: selectedType,
              items: ['NIM', 'JNS', 'Custom']
                  .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedType = value!;
                });
              },
              hint: const Text('Select Type'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await saveSettings();
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getComportList() {
    return ['COM1', 'COM2', 'COM3']
        .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
        .toList();
  }
}

