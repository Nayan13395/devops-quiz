import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../models/question.dart';

class QuestionService {
  Future<List<Question>> loadQuestions(Locale locale, String category) async {
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
      
      // --- SCRIPTING CATEGORIES ---
      "Bash": {"folder": "BASH", "file": "bash"},
      "Python": {"folder": "Python", "file": "python"},
      "Perl": {"folder": "Perl", "file": "perl"},
      "PowerShell": {"folder": "PowerShell", "file": "powershell"},
      "JavaScript": {"folder": "JavaScript", "file": "javascript"},
      "Ruby": {"folder": "Ruby", "file": "ruby"},
    };

    String fileName;

    if (categoryMap.containsKey(category)) {
      final config = categoryMap[category]!;
      // Loads the single file (e.g., assets/questions/BASH/bash_en.json)
      fileName = "assets/questions/${config["folder"]}/${config["file"]}_$language.json";
    } else {
      fileName = "assets/questions_$language.json";
    }

    final jsonString = await rootBundle.loadString(fileName);
    final List<dynamic> data = json.decode(jsonString);

    // Returns ALL questions. QuizScreen will filter by 'set' number automatically!
    return data.map((e) => Question.fromJson(e)).toList();
  }
}