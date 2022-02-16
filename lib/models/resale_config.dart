import 'package:conduit/conduit.dart';
import 'package:backend/models/go_daddy_config.dart';
import 'dart:io';
class ResaleConfig extends Configuration {
  ResaleConfig(String path): super.fromFile(File(path));
   GoDaddyConfig? godaddy;
}
