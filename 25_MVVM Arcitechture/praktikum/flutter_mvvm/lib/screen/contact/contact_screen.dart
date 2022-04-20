import 'package:flutter/material.dart';
import 'package:flutter_mvvm/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Contact'),
      ),
      body: ListView.builder(
          itemCount: model.contacts.length,
          itemBuilder: (context, i) {
            final contact = model.contacts[i];
            return ListTile(
              leading: CircleAvatar(
                child: Text(contact.name[i],
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300)),
              ),
              title: Text(contact.name),
              subtitle: Text(contact.phone),
            ); 
          }
          
          ),
    );
  }
}
