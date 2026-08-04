import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../models/question.dart';

class QuestionService {
  Future<List<Question>> loadQuestions(Locale locale, String category) async {
    // Determine language
    String language;

    switch (locale.languageCode) {
      case "hi":
        language = "hi";
        break;

      case "mr":
        language = "mr";
        break;

      default:
        language = "en";
    }

    // Category configuration
    final Map<String, Map<String, String>> categoryMap = {
      "AWS": {"folder": "AWS", "file": "aws"},
      "Azure": {"folder": "Azure", "file": "azure"},
      "GCP": {"folder": "GCP", "file": "gcp"},
      "Oracle Cloud": {"folder": "Oracle", "file": "oracle"},
      "IBM Cloud": {"folder": "IBM", "file": "ibm"},
      "Multi Cloud": {"folder": "Multicloud", "file": "multicloud"},
      "Hybrid Cloud": {"folder": "Hybridcloud", "file": "hybridcloud"},
      "Linux": {"folder": "Linux", "file": "linux"},
      "Docker": {"folder": "Docker", "file": "docker"},
      "Kubernetes": {"folder": "K8s", "file": "k8s"},
      "Networking": {"folder": "Networking", "file": "networking"},
      "Git": {"folder": "Git", "file": "git"},
      "Jenkins": {"folder": "Jenkins", "file": "jenkins"},
      "Terraform": {"folder": "Terraform", "file": "terraform"},
      "Ansible": {"folder": "Ansible", "file": "ansible"},
    };

    String fileName;

    if (categoryMap.containsKey(category)) {
      final config = categoryMap[category]!;

      fileName =
          "assets/questions/${config["folder"]}/${config["file"]}_$language.json";
    } else {
      // Default = Mixed DevOps questions
      fileName = "assets/questions_$language.json";
    }

    final jsonString = await rootBundle.loadString(fileName);

    final List<dynamic> data = json.decode(jsonString);

    return data.map((e) => Question.fromJson(e)).toList();
  }
}
