"""Add the Settings "Change Font" strings (font*) to every ARB file."""
from __future__ import annotations

import json
from pathlib import Path

L10N = Path(__file__).resolve().parents[1] / "lib" / "l10n"

KEYS = [
    "fontSettingsTitle",
    "fontChangeFont",
    "fontSystemDefault",
    "fontPreview",
    "fontPreviewSample",
    "fontSelected",
    "fontLatinOnlyNote",
    "fontDescSystem",
    "fontDescGeometric",
    "fontDescGeometricRounded",
    "fontDescFriendly",
    "fontDescCondensed",
    "fontDescRounded",
    "fontDescRoundedDisplay",
]

DESCRIPTIONS = {
    "fontSettingsTitle": "Settings tile title for the app font option",
    "fontChangeFont": "Title of the font picker screen",
    "fontSystemDefault": "Font option that uses the device's own font",
    "fontPreview": "Label shown before a font preview sentence",
    "fontPreviewSample": "Sample sentence rendered in each font option",
    "fontSelected": "Accessibility/status label for the active font",
    "fontLatinOnlyNote": "Explains custom fonts only cover Latin letters",
    "fontDescSystem": "Description of the System Default font option",
    "fontDescGeometric": "Style description for Montserrat",
    "fontDescGeometricRounded": "Style description for Poppins",
    "fontDescFriendly": "Style description for Rubik",
    "fontDescCondensed": "Style description for Oswald",
    "fontDescRounded": "Style description for Nunito",
    "fontDescRoundedDisplay": "Style description for Comfortaa",
}

# Order matches KEYS. Font family names (Montserrat, Poppins, ...) are proper
# names and are intentionally not translated.
T: dict[str, list[str]] = {
    "en": ["Font", "Change Font", "System Default", "Preview", "Learn DevOps one question at a time", "Selected", "Custom fonts apply to Latin letters. Other scripts keep your device's font.", "Your device's built-in font", "Geometric sans-serif", "Geometric rounded sans-serif", "Friendly sans-serif", "Condensed", "Rounded sans-serif", "Rounded display"],
    "ar": ["الخط", "تغيير الخط", "الافتراضي للنظام", "معاينة", "تعلّم DevOps سؤالًا تلو الآخر", "محدد", "تُطبَّق الخطوط المخصصة على الحروف اللاتينية. تحتفظ الكتابات الأخرى بخط جهازك.", "الخط المدمج في جهازك", "خط هندسي بلا زوائد", "خط هندسي مستدير بلا زوائد", "خط ودود بلا زوائد", "مضغوط", "خط مستدير بلا زوائد", "خط عرض مستدير"],
    "as": ["ফণ্ট", "ফণ্ট সলনি কৰক", "ছিষ্টেম ডিফল্ট", "পূৰ্বদৰ্শন", "এটা এটা প্ৰশ্নৰে DevOps শিকক", "বাছনি কৰা", "কাষ্টম ফণ্ট লেটিন আখৰত প্ৰযোজ্য। অন্য লিপিসমূহ আপোনাৰ ডিভাইচৰ ফণ্টতে থাকিব।", "আপোনাৰ ডিভাইচৰ নিজা ফণ্ট", "জ্যামিতিক ছান্স-ছেৰিফ", "জ্যামিতিক ঘূৰণীয়া ছান্স-ছেৰিফ", "বন্ধুসুলভ ছান্স-ছেৰিফ", "সংকুচিত", "ঘূৰণীয়া ছান্স-ছেৰিফ", "ঘূৰণীয়া ডিচপ্লে"],
    "bn": ["ফন্ট", "ফন্ট পরিবর্তন করুন", "সিস্টেম ডিফল্ট", "প্রিভিউ", "একটি একটি প্রশ্নে DevOps শিখুন", "নির্বাচিত", "কাস্টম ফন্ট ল্যাটিন অক্ষরে প্রযোজ্য। অন্যান্য লিপি আপনার ডিভাইসের ফন্টেই থাকবে।", "আপনার ডিভাইসের অন্তর্নির্মিত ফন্ট", "জ্যামিতিক স্যান্স-সেরিফ", "জ্যামিতিক গোলাকার স্যান্স-সেরিফ", "বন্ধুত্বপূর্ণ স্যান্স-সেরিফ", "সংকুচিত", "গোলাকার স্যান্স-সেরিফ", "গোলাকার ডিসপ্লে"],
    "de": ["Schriftart", "Schriftart ändern", "Systemstandard", "Vorschau", "Lerne DevOps Frage für Frage", "Ausgewählt", "Eigene Schriftarten gelten für lateinische Buchstaben. Andere Schriftsysteme behalten die Schriftart deines Geräts.", "Die integrierte Schriftart deines Geräts", "Geometrische Grotesk", "Geometrische, abgerundete Grotesk", "Freundliche Grotesk", "Schmal", "Abgerundete Grotesk", "Abgerundete Displayschrift"],
    "doi": ["फॉन्ट", "फॉन्ट बदलो", "सिस्टम डिफॉल्ट", "झलक", "इक-इक सुआल कन्नै DevOps सिक्खो", "चुने दा", "कस्टम फॉन्ट लैटिन अक्खरें पर लागू होंदे न। दूइयां लिपियां तुंदे डिवाइस दे फॉन्ट च गै रौंह्दियां न।", "तुंदे डिवाइस दा अपना फॉन्ट", "ज्यामितीय सैन्स-सेरिफ", "ज्यामितीय गोल सैन्स-सेरिफ", "सौखा सैन्स-सेरिफ", "संकुचित", "गोल सैन्स-सेरिफ", "गोल डिस्प्ले"],
    "es": ["Fuente", "Cambiar fuente", "Predeterminada del sistema", "Vista previa", "Aprende DevOps pregunta a pregunta", "Seleccionada", "Las fuentes personalizadas se aplican a las letras latinas. Los demás sistemas de escritura conservan la fuente de tu dispositivo.", "La fuente integrada de tu dispositivo", "Sans serif geométrica", "Sans serif geométrica redondeada", "Sans serif amigable", "Condensada", "Sans serif redondeada", "Display redondeada"],
    "fr": ["Police", "Changer de police", "Police du système", "Aperçu", "Apprends DevOps question après question", "Sélectionnée", "Les polices personnalisées s'appliquent aux lettres latines. Les autres écritures conservent la police de ton appareil.", "La police intégrée de ton appareil", "Sans empattement géométrique", "Sans empattement géométrique arrondie", "Sans empattement conviviale", "Condensée", "Sans empattement arrondie", "Display arrondie"],
    "gom": ["फॉन्ट", "फॉन्ट बदलात", "सिस्टम डिफॉल्ट", "पूर्वावलोकन", "एकेक प्रस्नान DevOps शिकात", "वेंचिल्लें", "कस्टम फॉन्ट लॅटिन अक्षरांक लागू जातात. हेर लिपी तुमच्या डिव्हायसाच्या फॉन्टांतूच उरतात.", "तुमच्या डिव्हायसाचो भितरलो फॉन्ट", "भौमितीक सॅन्स-सेरिफ", "भौमितीक वाटकुळो सॅन्स-सेरिफ", "इश्टागतीचो सॅन्स-सेरिफ", "संकुचित", "वाटकुळो सॅन्स-सेरिफ", "वाटकुळो डिस्प्ले"],
    "gu": ["ફૉન્ટ", "ફૉન્ટ બદલો", "સિસ્ટમ ડિફૉલ્ટ", "પૂર્વાવલોકન", "એક-એક પ્રશ્ન દ્વારા DevOps શીખો", "પસંદ કરેલ", "કસ્ટમ ફૉન્ટ લેટિન અક્ષરો પર લાગુ થાય છે. અન્ય લિપિઓ તમારા ઉપકરણના ફૉન્ટમાં જ રહેશે.", "તમારા ઉપકરણનો બિલ્ટ-ઇન ફૉન્ટ", "ભૌમિતિક સૅન્સ-સેરિફ", "ભૌમિતિક ગોળાકાર સૅન્સ-સેરિફ", "મૈત્રીપૂર્ણ સૅન્સ-સેરિફ", "સંકુચિત", "ગોળાકાર સૅન્સ-સેરિફ", "ગોળાકાર ડિસ્પ્લે"],
    "hi": ["फ़ॉन्ट", "फ़ॉन्ट बदलें", "सिस्टम डिफ़ॉल्ट", "पूर्वावलोकन", "एक-एक प्रश्न से DevOps सीखें", "चयनित", "कस्टम फ़ॉन्ट लैटिन अक्षरों पर लागू होते हैं। अन्य लिपियाँ आपके डिवाइस के फ़ॉन्ट में ही दिखेंगी।", "आपके डिवाइस का अंतर्निहित फ़ॉन्ट", "ज्यामितीय सैंस-सेरिफ़", "ज्यामितीय गोलाकार सैंस-सेरिफ़", "सहज सैंस-सेरिफ़", "संकुचित", "गोलाकार सैंस-सेरिफ़", "गोलाकार डिस्प्ले"],
    "id": ["Font", "Ubah Font", "Bawaan Sistem", "Pratinjau", "Belajar DevOps satu per satu pertanyaan", "Dipilih", "Font khusus berlaku untuk huruf Latin. Aksara lain tetap memakai font perangkat Anda.", "Font bawaan perangkat Anda", "Sans-serif geometris", "Sans-serif geometris membulat", "Sans-serif ramah", "Ringkas", "Sans-serif membulat", "Display membulat"],
    "it": ["Carattere", "Cambia carattere", "Predefinito di sistema", "Anteprima", "Impara DevOps una domanda alla volta", "Selezionato", "I caratteri personalizzati si applicano alle lettere latine. Gli altri sistemi di scrittura mantengono il carattere del dispositivo.", "Il carattere integrato del dispositivo", "Sans serif geometrico", "Sans serif geometrico arrotondato", "Sans serif amichevole", "Condensato", "Sans serif arrotondato", "Display arrotondato"],
    "ja": ["フォント", "フォントを変更", "システムのデフォルト", "プレビュー", "1問ずつDevOpsを学ぼう", "選択中", "カスタムフォントはラテン文字に適用されます。その他の文字はデバイスのフォントで表示されます。", "デバイスの標準フォント", "ジオメトリック・サンセリフ", "丸みのあるジオメトリック・サンセリフ", "親しみやすいサンセリフ", "コンデンス", "丸みのあるサンセリフ", "丸みのあるディスプレイ書体"],
    "kn": ["ಫಾಂಟ್", "ಫಾಂಟ್ ಬದಲಾಯಿಸಿ", "ಸಿಸ್ಟಮ್ ಡೀಫಾಲ್ಟ್", "ಪೂರ್ವವೀಕ್ಷಣೆ", "ಒಂದೊಂದೇ ಪ್ರಶ್ನೆಯ ಮೂಲಕ DevOps ಕಲಿಯಿರಿ", "ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ", "ಕಸ್ಟಮ್ ಫಾಂಟ್‌ಗಳು ಲ್ಯಾಟಿನ್ ಅಕ್ಷರಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತವೆ. ಇತರ ಲಿಪಿಗಳು ನಿಮ್ಮ ಸಾಧನದ ಫಾಂಟ್‌ನಲ್ಲೇ ಇರುತ್ತವೆ.", "ನಿಮ್ಮ ಸಾಧನದ ಅಂತರ್ನಿರ್ಮಿತ ಫಾಂಟ್", "ಜ್ಯಾಮಿತೀಯ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್", "ಜ್ಯಾಮಿತೀಯ ದುಂಡಾದ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್", "ಸ್ನೇಹಪರ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್", "ಸಂಕುಚಿತ", "ದುಂಡಾದ ಸ್ಯಾನ್ಸ್-ಸೆರಿಫ್", "ದುಂಡಾದ ಡಿಸ್‌ಪ್ಲೇ"],
    "mai": ["फॉन्ट", "फॉन्ट बदलू", "सिस्टम डिफॉल्ट", "पूर्वावलोकन", "एक-एक प्रश्नसँ DevOps सीखू", "चयनित", "कस्टम फॉन्ट लैटिन अक्षर पर लागू होइत अछि। आन लिपि अहाँक डिवाइसक फॉन्टमे रहत।", "अहाँक डिवाइसक अंतर्निर्मित फॉन्ट", "ज्यामितीय सैन्स-सेरिफ", "ज्यामितीय गोलाकार सैन्स-सेरिफ", "सहज सैन्स-सेरिफ", "संकुचित", "गोलाकार सैन्स-सेरिफ", "गोलाकार डिस्प्ले"],
    "ml": ["ഫോണ്ട്", "ഫോണ്ട് മാറ്റുക", "സിസ്റ്റം ഡിഫോൾട്ട്", "പ്രിവ്യൂ", "ഓരോ ചോദ്യത്തിലൂടെയും DevOps പഠിക്കാം", "തിരഞ്ഞെടുത്തത്", "ഇഷ്‌ടാനുസൃത ഫോണ്ടുകൾ ലാറ്റിൻ അക്ഷരങ്ങൾക്ക് ബാധകമാണ്. മറ്റ് ലിപികൾ നിങ്ങളുടെ ഉപകരണത്തിന്റെ ഫോണ്ടിൽ തന്നെ തുടരും.", "നിങ്ങളുടെ ഉപകരണത്തിലെ ബിൽറ്റ്-ഇൻ ഫോണ്ട്", "ജ്യാമിതീയ സാൻസ്-സെരിഫ്", "ജ്യാമിതീയ ഉരുണ്ട സാൻസ്-സെരിഫ്", "സൗഹൃദപരമായ സാൻസ്-സെരിഫ്", "ഇടുങ്ങിയത്", "ഉരുണ്ട സാൻസ്-സെരിഫ്", "ഉരുണ്ട ഡിസ്‌പ്ലേ"],
    "mni": ["ꯐꯣꯟꯠ", "ꯐꯣꯟꯠ ꯍꯣꯡꯗꯣꯛꯄꯤꯌꯨ", "ꯁꯤꯁ꯭ꯇꯦꯝ ꯗꯤꯐꯣꯜꯇ", "ꯄ꯭ꯔꯤꯚꯤꯌꯨ", "ꯋꯥꯍꯪ ꯑꯃꯃꯝ ꯑꯃꯃꯝꯅꯥ DevOps ꯇꯝꯃꯤ", "ꯈꯟꯂꯕ", "ꯀꯁ꯭ꯇꯝ ꯐꯣꯟꯠꯁꯤꯡ ꯑꯁꯤ ꯂꯦꯇꯤꯟ ꯃꯌꯦꯛꯁꯤꯡꯗꯥ ꯁꯤꯖꯤꯟꯅꯩ꯫ ꯑꯇꯣꯞꯄ ꯃꯌꯦꯛꯁꯤꯡꯅꯥ ꯅꯍꯥꯛꯀꯤ ꯗꯤꯚꯥꯏꯁꯀꯤ ꯐꯣꯟꯠ ꯁꯤꯖꯤꯟꯅꯒꯅꯤ꯫", "ꯅꯍꯥꯛꯀꯤ ꯗꯤꯚꯥꯏꯁꯇꯥ ꯌꯥꯎꯔꯤꯕ ꯐꯣꯟꯠ", "ꯖꯤꯑꯣꯃꯦꯠꯔꯤꯛ ꯁꯦꯟꯁ-ꯁꯦꯔꯤꯐ", "ꯑꯀꯣꯏꯕ ꯖꯤꯑꯣꯃꯦꯠꯔꯤꯛ ꯁꯦꯟꯁ-ꯁꯦꯔꯤꯐ", "ꯃꯔꯨꯞ ꯑꯣꯏꯕ ꯁꯦꯟꯁ-ꯁꯦꯔꯤꯐ", "ꯀꯟꯗꯦꯟꯁ ꯇꯧꯔꯕ", "ꯑꯀꯣꯏꯕ ꯁꯦꯟꯁ-ꯁꯦꯔꯤꯐ", "ꯑꯀꯣꯏꯕ ꯗꯤꯁ꯭ꯄ꯭ꯂꯦ"],
    "mr": ["फॉन्ट", "फॉन्ट बदला", "सिस्टम डीफॉल्ट", "पूर्वावलोकन", "एकेका प्रश्नातून DevOps शिका", "निवडलेले", "सानुकूल फॉन्ट लॅटिन अक्षरांना लागू होतात. इतर लिपी तुमच्या डिव्हाइसच्या फॉन्टमध्येच दिसतील.", "तुमच्या डिव्हाइसचा अंगभूत फॉन्ट", "भौमितिक सॅन्स-सेरिफ", "भौमितिक गोलाकार सॅन्स-सेरिफ", "मैत्रीपूर्ण सॅन्स-सेरिफ", "संकुचित", "गोलाकार सॅन्स-सेरिफ", "गोलाकार डिस्प्ले"],
    "ne": ["फन्ट", "फन्ट परिवर्तन गर्नुहोस्", "प्रणाली पूर्वनिर्धारित", "पूर्वावलोकन", "एक-एक प्रश्नबाट DevOps सिक्नुहोस्", "चयन गरिएको", "अनुकूल फन्टहरू ल्याटिन अक्षरमा लागू हुन्छन्। अन्य लिपिहरू तपाईंको यन्त्रको फन्टमै रहन्छन्।", "तपाईंको यन्त्रको अन्तर्निर्मित फन्ट", "ज्यामितीय सान्स-सेरिफ", "ज्यामितीय गोलाकार सान्स-सेरिफ", "मैत्रीपूर्ण सान्स-सेरिफ", "साँघुरो", "गोलाकार सान्स-सेरिफ", "गोलाकार डिस्प्ले"],
    "or": ["ଫଣ୍ଟ", "ଫଣ୍ଟ ବଦଳାନ୍ତୁ", "ସିଷ୍ଟମ ଡିଫଲ୍ଟ", "ପୂର୍ବାବଲୋକନ", "ଗୋଟିଏ ଗୋଟିଏ ପ୍ରଶ୍ନରେ DevOps ଶିଖନ୍ତୁ", "ଚୟନିତ", "କଷ୍ଟମ ଫଣ୍ଟ ଲାଟିନ ଅକ୍ଷରରେ ପ୍ରଯୁଜ୍ୟ। ଅନ୍ୟ ଲିପିଗୁଡ଼ିକ ଆପଣଙ୍କ ଡିଭାଇସର ଫଣ୍ଟରେ ହିଁ ରହିବ।", "ଆପଣଙ୍କ ଡିଭାଇସର ଅନ୍ତର୍ନିର୍ମିତ ଫଣ୍ଟ", "ଜ୍ୟାମିତିକ ସାନ୍ସ-ସେରିଫ", "ଜ୍ୟାମିତିକ ଗୋଲାକାର ସାନ୍ସ-ସେରିଫ", "ବନ୍ଧୁତ୍ୱପୂର୍ଣ୍ଣ ସାନ୍ସ-ସେରିଫ", "ସଙ୍କୁଚିତ", "ଗୋଲାକାର ସାନ୍ସ-ସେରିଫ", "ଗୋଲାକାର ଡିସପ୍ଲେ"],
    "pa": ["ਫੌਂਟ", "ਫੌਂਟ ਬਦਲੋ", "ਸਿਸਟਮ ਡਿਫੌਲਟ", "ਝਲਕ", "ਇੱਕ-ਇੱਕ ਸਵਾਲ ਨਾਲ DevOps ਸਿੱਖੋ", "ਚੁਣਿਆ ਗਿਆ", "ਕਸਟਮ ਫੌਂਟ ਲਾਤੀਨੀ ਅੱਖਰਾਂ 'ਤੇ ਲਾਗੂ ਹੁੰਦੇ ਹਨ। ਹੋਰ ਲਿਪੀਆਂ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਫੌਂਟ ਵਿੱਚ ਹੀ ਰਹਿਣਗੀਆਂ।", "ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦਾ ਬਿਲਟ-ਇਨ ਫੌਂਟ", "ਜਿਓਮੈਟ੍ਰਿਕ ਸੈਨਸ-ਸੈਰਿਫ", "ਜਿਓਮੈਟ੍ਰਿਕ ਗੋਲ ਸੈਨਸ-ਸੈਰਿਫ", "ਦੋਸਤਾਨਾ ਸੈਨਸ-ਸੈਰਿਫ", "ਸੰਘਣਾ", "ਗੋਲ ਸੈਨਸ-ਸੈਰਿਫ", "ਗੋਲ ਡਿਸਪਲੇ"],
    "pt": ["Fonte", "Alterar fonte", "Padrão do sistema", "Prévia", "Aprenda DevOps uma pergunta de cada vez", "Selecionada", "As fontes personalizadas se aplicam às letras latinas. Outros sistemas de escrita mantêm a fonte do seu dispositivo.", "A fonte integrada do seu dispositivo", "Sem serifa geométrica", "Sem serifa geométrica arredondada", "Sem serifa amigável", "Condensada", "Sem serifa arredondada", "Display arredondada"],
    "ru": ["Шрифт", "Изменить шрифт", "Системный по умолчанию", "Предпросмотр", "Изучайте DevOps вопрос за вопросом", "Выбрано", "Пользовательские шрифты применяются к латинским буквам. Для других письменностей сохраняется шрифт устройства.", "Встроенный шрифт вашего устройства", "Геометрический гротеск", "Геометрический скруглённый гротеск", "Дружелюбный гротеск", "Узкий", "Скруглённый гротеск", "Скруглённый акцидентный"],
    "sa": ["अक्षररूपम्", "अक्षररूपं परिवर्तयतु", "प्रणाली-पूर्वनिर्धारितम्", "पूर्वदर्शनम्", "एकैकेन प्रश्नेन DevOps पठतु", "चितम्", "स्वनिर्मित-अक्षररूपाणि लैटिन-अक्षरेषु प्रयुज्यन्ते। अन्याः लिपयः भवतः यन्त्रस्य अक्षररूपे एव तिष्ठन्ति।", "भवतः यन्त्रस्य अन्तर्निहितम् अक्षररूपम्", "ज्यामितीयं सान्स-सेरिफ्", "ज्यामितीयं वर्तुलं सान्स-सेरिफ्", "सौम्यं सान्स-सेरिफ्", "सङ्कुचितम्", "वर्तुलं सान्स-सेरिफ्", "वर्तुलं प्रदर्शन-रूपम्"],
    "sat": ["ᱯᱷᱚᱱᱴ", "ᱯᱷᱚᱱᱴ ᱵᱚᱫᱚᱞ ᱢᱮ", "ᱥᱤᱥᱴᱚᱢ ᱰᱤᱯᱷᱚᱞᱴ", "ᱯᱨᱤᱵᱷᱤᱭᱩ", "ᱢᱤᱫ ᱢᱤᱫ ᱠᱩᱠᱞᱤ ᱛᱮ DevOps ᱥᱤᱠᱷᱟᱣ", "ᱵᱟᱪᱷᱟᱣ ᱟᱠᱟᱱ", "ᱠᱚᱥᱴᱚᱢ ᱯᱷᱚᱱᱴ ᱫᱚ ᱞᱮᱴᱤᱱ ᱟᱠᱷᱚᱨ ᱨᱮ ᱞᱟᱹᱜᱩᱜᱼᱟ᱾ ᱮᱴᱟᱜ ᱟᱠᱷᱚᱨ ᱫᱚ ᱟᱢᱟᱜ ᱰᱤᱵᱟᱭᱤᱥ ᱨᱮᱭᱟᱜ ᱯᱷᱚᱱᱴ ᱛᱮᱜᱮ ᱛᱟᱦᱮᱸᱱᱟ᱾", "ᱟᱢᱟᱜ ᱰᱤᱵᱟᱭᱤᱥ ᱨᱮᱭᱟᱜ ᱵᱤᱞᱴᱤᱱ ᱯᱷᱚᱱᱴ", "ᱡᱤᱭᱚᱢᱮᱴᱨᱤᱠ ᱥᱮᱱᱥ-ᱥᱮᱨᱤᱯᱷ", "ᱜᱚᱞ ᱡᱤᱭᱚᱢᱮᱴᱨᱤᱠ ᱥᱮᱱᱥ-ᱥᱮᱨᱤᱯᱷ", "ᱥᱟᱦᱟᱡ ᱥᱮᱱᱥ-ᱥᱮᱨᱤᱯᱷ", "ᱠᱚᱱᱰᱮᱱᱥᱰ", "ᱜᱚᱞ ᱥᱮᱱᱥ-ᱥᱮᱨᱤᱯᱷ", "ᱜᱚᱞ ᱰᱤᱥᱯᱞᱮ"],
    "sd": ["فونٽ", "فونٽ مٽايو", "سسٽم ڊفالٽ", "پيش منظر", "هڪ هڪ سوال سان DevOps سکو", "چونڊيل", "ڪسٽم فونٽ لاطيني اکرن تي لاڳو ٿين ٿا. ٻيون لپيون توهان جي ڊوائيس جي فونٽ ۾ ئي رهن ٿيون.", "توهان جي ڊوائيس جو اندروني فونٽ", "جاميٽرڪ سانس سيرف", "جاميٽرڪ گول سانس سيرف", "دوستاڻو سانس سيرف", "سوڙهو", "گول سانس سيرف", "گول ڊسپلي"],
    "ta": ["எழுத்துரு", "எழுத்துருவை மாற்று", "சிஸ்டம் இயல்புநிலை", "முன்னோட்டம்", "ஒவ்வொரு கேள்வியாக DevOps கற்றுக்கொள்ளுங்கள்", "தேர்ந்தெடுக்கப்பட்டது", "தனிப்பயன் எழுத்துருக்கள் லத்தீன் எழுத்துகளுக்குப் பொருந்தும். பிற எழுத்துமுறைகள் உங்கள் சாதனத்தின் எழுத்துருவிலேயே இருக்கும்.", "உங்கள் சாதனத்தின் உள்ளமைந்த எழுத்துரு", "ஜியோமெட்ரிக் சான்ஸ்-செரிஃப்", "வட்டமான ஜியோமெட்ரிக் சான்ஸ்-செரிஃப்", "நட்பான சான்ஸ்-செரிஃப்", "குறுகிய", "வட்டமான சான்ஸ்-செரிஃப்", "வட்டமான டிஸ்ப்ளே"],
    "te": ["ఫాంట్", "ఫాంట్ మార్చండి", "సిస్టమ్ డిఫాల్ట్", "ప్రివ్యూ", "ఒక్కో ప్రశ్నతో DevOps నేర్చుకోండి", "ఎంచుకున్నది", "అనుకూల ఫాంట్‌లు లాటిన్ అక్షరాలకు వర్తిస్తాయి. ఇతర లిపులు మీ పరికరం ఫాంట్‌లోనే ఉంటాయి.", "మీ పరికరంలోని అంతర్నిర్మిత ఫాంట్", "జ్యామితీయ సాన్స్-సెరిఫ్", "జ్యామితీయ గుండ్రని సాన్స్-సెరిఫ్", "స్నేహపూర్వక సాన్స్-సెరిఫ్", "కుదించిన", "గుండ్రని సాన్స్-సెరిఫ్", "గుండ్రని డిస్‌ప్లే"],
    "tr": ["Yazı tipi", "Yazı tipini değiştir", "Sistem varsayılanı", "Önizleme", "DevOps'u soru soru öğren", "Seçili", "Özel yazı tipleri Latin harflerine uygulanır. Diğer yazı sistemleri cihazınızın yazı tipini korur.", "Cihazınızın yerleşik yazı tipi", "Geometrik sans serif", "Yuvarlatılmış geometrik sans serif", "Samimi sans serif", "Dar", "Yuvarlatılmış sans serif", "Yuvarlatılmış başlık yazı tipi"],
    "ur": ["فونٹ", "فونٹ تبدیل کریں", "سسٹم ڈیفالٹ", "پیش نظارہ", "ایک ایک سوال کے ساتھ DevOps سیکھیں", "منتخب شدہ", "حسبِ ضرورت فونٹ لاطینی حروف پر لاگو ہوتے ہیں۔ دیگر رسم الخط آپ کے آلے کے فونٹ میں ہی رہتے ہیں۔", "آپ کے آلے کا بلٹ اِن فونٹ", "جیومیٹرک سانس سیرف", "گول جیومیٹرک سانس سیرف", "دوستانہ سانس سیرف", "تنگ", "گول سانس سیرف", "گول ڈسپلے"],
    "zh": ["字体", "更改字体", "系统默认", "预览", "一题一题学 DevOps", "已选择", "自定义字体适用于拉丁字母，其他文字仍使用设备字体。", "设备内置字体", "几何无衬线体", "几何圆润无衬线体", "亲和无衬线体", "窄体", "圆润无衬线体", "圆润展示体"],
}


def main() -> None:
    for path in sorted(L10N.glob("app_*.arb")):
        code = path.stem[4:]
        values = T[code]
        assert len(values) == len(KEYS), code
        text = path.read_text(encoding="utf-8")
        if KEYS[0] in json.loads(text):
            print("already present", path.name)
            continue
        lines = []
        for key, value in zip(KEYS, values):
            lines.append(f"  {json.dumps(key)}: {json.dumps(value, ensure_ascii=False)}")
            if code == "en":
                lines.append(
                    f'  "@{key}": {{ "description": {json.dumps(DESCRIPTIONS[key])} }}'
                )
        end = text.rstrip().rfind("}")
        body = text[:end].rstrip()
        path.write_text(
            body + ",\n" + ",\n".join(lines) + "\n}\n", encoding="utf-8", newline="\n"
        )
        print("updated", path.name)


if __name__ == "__main__":
    main()
