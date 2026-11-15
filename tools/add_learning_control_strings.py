"""Add Learning screen control strings (learningControl*) to every ARB file."""
from __future__ import annotations

import json
from pathlib import Path

L10N = Path(__file__).resolve().parents[1] / "lib" / "l10n"

KEYS = [
    "learningControlTitle",
    "learningControlAllCategories",
    "learningControlSearchCards",
    "learningControlClearSearch",
    "learningControlCategory",
    "learningControlShowAll",
    "learningControlShowSaved",
    "learningControlShuffleOff",
    "learningControlShuffleOn",
    "learningControlAutoOff",
    "learningControlAutoOn",
    "learningControlNoSaved",
    "learningControlNoMatches",
    "learningControlResetFilters",
    "learningControlPrevious",
    "learningControlNext",
    "learningControlProgress",
    "learningControlRemoveSaved",
    "learningControlSaveCard",
    "learningControlExample",
    "learningControlCopyExample",
    "learningControlExampleCopied",
]

# Order matches KEYS. Entry 7 uses the {count} placeholder.
T: dict[str, list[str]] = {
    "en": ["DevOps Learning", "All categories", "Search cards", "Clear search", "Category", "Show all cards", "Show saved cards ({count})", "Turn shuffle off", "Shuffle cards", "Stop auto swap", "Auto swap every 10 seconds", "No saved cards yet", "No matching cards", "Reset filters", "Previous", "Next", "Progress", "Remove from saved", "Save card", "Example", "Copy example", "Example copied"],
    "hi": ["DevOps सीखें", "सभी श्रेणियाँ", "कार्ड खोजें", "खोज मिटाएँ", "श्रेणी", "सभी कार्ड दिखाएँ", "सहेजे गए कार्ड दिखाएँ ({count})", "शफ़ल बंद करें", "कार्ड शफ़ल करें", "ऑटो स्वाइप बंद करें", "हर 10 सेकंड में ऑटो स्वाइप", "अभी कोई कार्ड सहेजा नहीं गया", "कोई कार्ड नहीं मिला", "फ़िल्टर हटाएँ", "पिछला", "अगला", "प्रगति", "सहेजे गए से हटाएँ", "कार्ड सहेजें", "उदाहरण", "उदाहरण कॉपी करें", "उदाहरण कॉपी किया गया"],
    "mr": ["DevOps शिका", "सर्व श्रेणी", "कार्ड शोधा", "शोध साफ करा", "श्रेणी", "सर्व कार्ड दाखवा", "जतन केलेले कार्ड दाखवा ({count})", "शफल बंद करा", "कार्ड शफल करा", "ऑटो स्वाइप बंद करा", "दर 10 सेकंदांनी ऑटो स्वाइप", "अजून कोणतेही कार्ड जतन केलेले नाही", "कोणतेही कार्ड सापडले नाही", "फिल्टर काढा", "मागील", "पुढील", "प्रगती", "जतन केलेल्यातून काढा", "कार्ड जतन करा", "उदाहरण", "उदाहरण कॉपी करा", "उदाहरण कॉपी केले"],
    "ar": ["تعلّم DevOps", "كل الفئات", "ابحث في البطاقات", "مسح البحث", "الفئة", "عرض كل البطاقات", "عرض البطاقات المحفوظة ({count})", "إيقاف الخلط", "خلط البطاقات", "إيقاف التبديل التلقائي", "تبديل تلقائي كل 10 ثوانٍ", "لا توجد بطاقات محفوظة بعد", "لا توجد بطاقات مطابقة", "إعادة ضبط التصفية", "السابق", "التالي", "التقدم", "إزالة من المحفوظات", "حفظ البطاقة", "مثال", "نسخ المثال", "تم نسخ المثال"],
    "as": ["DevOps শিকক", "সকলো শ্ৰেণী", "কাৰ্ড সন্ধান কৰক", "সন্ধান মচক", "শ্ৰেণী", "সকলো কাৰ্ড দেখুৱাওক", "সংৰক্ষিত কাৰ্ড দেখুৱাওক ({count})", "শ্বাফল বন্ধ কৰক", "কাৰ্ড শ্বাফল কৰক", "স্বয়ংক্ৰিয় সলনি বন্ধ কৰক", "প্ৰতি ১০ ছেকেণ্ডত স্বয়ংক্ৰিয় সলনি", "এতিয়াও কোনো কাৰ্ড সংৰক্ষণ কৰা হোৱা নাই", "মিল থকা কোনো কাৰ্ড নাই", "ফিল্টাৰ ৰিছেট কৰক", "আগৰটো", "পিছৰটো", "অগ্ৰগতি", "সংৰক্ষিতৰ পৰা আঁতৰাওক", "কাৰ্ড সংৰক্ষণ কৰক", "উদাহৰণ", "উদাহৰণ কপি কৰক", "উদাহৰণ কপি কৰা হ’ল"],
    "bn": ["DevOps শিখুন", "সব বিভাগ", "কার্ড খুঁজুন", "অনুসন্ধান মুছুন", "বিভাগ", "সব কার্ড দেখান", "সংরক্ষিত কার্ড দেখান ({count})", "শাফল বন্ধ করুন", "কার্ড শাফল করুন", "অটো সোয়াপ বন্ধ করুন", "প্রতি ১০ সেকেন্ডে অটো সোয়াপ", "এখনও কোনো কার্ড সংরক্ষিত হয়নি", "মিলে যাওয়া কোনো কার্ড নেই", "ফিল্টার রিসেট করুন", "আগেরটি", "পরেরটি", "অগ্রগতি", "সংরক্ষিত থেকে সরান", "কার্ড সংরক্ষণ করুন", "উদাহরণ", "উদাহরণ কপি করুন", "উদাহরণ কপি হয়েছে"],
    "de": ["DevOps lernen", "Alle Kategorien", "Karten suchen", "Suche löschen", "Kategorie", "Alle Karten anzeigen", "Gespeicherte Karten anzeigen ({count})", "Mischen ausschalten", "Karten mischen", "Automatischen Wechsel beenden", "Automatischer Wechsel alle 10 Sekunden", "Noch keine Karten gespeichert", "Keine passenden Karten", "Filter zurücksetzen", "Zurück", "Weiter", "Fortschritt", "Aus Gespeichertem entfernen", "Karte speichern", "Beispiel", "Beispiel kopieren", "Beispiel kopiert"],
    "doi": ["DevOps सिक्खो", "सारियां श्रेणियां", "कार्ड खोजो", "खोज मटाओ", "श्रेणी", "सारे कार्ड दस्सो", "सहेजे दे कार्ड दस्सो ({count})", "शफल बंद करो", "कार्ड शफल करो", "ऑटो स्वाइप बंद करो", "हर 10 सकिंटें बाद ऑटो स्वाइप", "हाली तकर कोई कार्ड सहेजे दा नेईं", "कोई कार्ड नेईं मिलेआ", "फिल्टर हटाओ", "पिछला", "अगला", "प्रगति", "सहेजे दे चा हटाओ", "कार्ड सहेजो", "उदाहरण", "उदाहरण कॉपी करो", "उदाहरण कॉपी कीता गेआ"],
    "es": ["Aprender DevOps", "Todas las categorías", "Buscar tarjetas", "Borrar búsqueda", "Categoría", "Mostrar todas las tarjetas", "Mostrar tarjetas guardadas ({count})", "Desactivar el orden aleatorio", "Mezclar tarjetas", "Detener el cambio automático", "Cambio automático cada 10 segundos", "Aún no hay tarjetas guardadas", "No hay tarjetas coincidentes", "Restablecer filtros", "Anterior", "Siguiente", "Progreso", "Quitar de guardados", "Guardar tarjeta", "Ejemplo", "Copiar ejemplo", "Ejemplo copiado"],
    "fr": ["Apprendre DevOps", "Toutes les catégories", "Rechercher des cartes", "Effacer la recherche", "Catégorie", "Afficher toutes les cartes", "Afficher les cartes enregistrées ({count})", "Désactiver le mélange", "Mélanger les cartes", "Arrêter le défilement automatique", "Défilement automatique toutes les 10 secondes", "Aucune carte enregistrée pour le moment", "Aucune carte correspondante", "Réinitialiser les filtres", "Précédent", "Suivant", "Progression", "Retirer des éléments enregistrés", "Enregistrer la carte", "Exemple", "Copier l'exemple", "Exemple copié"],
    "gom": ["DevOps शिकात", "सगळ्यो वर्गवारी", "कार्ड सोदात", "सोद पुसात", "वर्गवारी", "सगळे कार्ड दाखयात", "जतन केल्ले कार्ड दाखयात ({count})", "शफल बंद करात", "कार्ड शफल करात", "ऑटो स्वाईप बंद करात", "दर 10 सेकंदांनी ऑटो स्वाईप", "अजून कसलेच कार्ड जतन केल्लें ना", "जुळपी कार्ड ना", "फिल्टर परत सुरवेक करात", "फाटलें", "फुडलें", "प्रगती", "जतन केल्ल्यांतल्यान काडून उडयात", "कार्ड जतन करात", "उदाहरण", "उदाहरण कॉपी करात", "उदाहरण कॉपी केलें"],
    "gu": ["DevOps શીખો", "બધી શ્રેણીઓ", "કાર્ડ શોધો", "શોધ સાફ કરો", "શ્રેણી", "બધા કાર્ડ બતાવો", "સાચવેલા કાર્ડ બતાવો ({count})", "શફલ બંધ કરો", "કાર્ડ શફલ કરો", "ઑટો સ્વાઇપ બંધ કરો", "દર 10 સેકન્ડે ઑટો સ્વાઇપ", "હજુ કોઈ કાર્ડ સાચવ્યું નથી", "મેળ ખાતા કાર્ડ નથી", "ફિલ્ટર રીસેટ કરો", "પાછલું", "આગળનું", "પ્રગતિ", "સાચવેલામાંથી દૂર કરો", "કાર્ડ સાચવો", "ઉદાહરણ", "ઉદાહરણ કૉપિ કરો", "ઉદાહરણ કૉપિ થયું"],
    "id": ["Belajar DevOps", "Semua kategori", "Cari kartu", "Hapus pencarian", "Kategori", "Tampilkan semua kartu", "Tampilkan kartu tersimpan ({count})", "Matikan acak", "Acak kartu", "Hentikan pergantian otomatis", "Pergantian otomatis setiap 10 detik", "Belum ada kartu tersimpan", "Tidak ada kartu yang cocok", "Atur ulang filter", "Sebelumnya", "Berikutnya", "Kemajuan", "Hapus dari tersimpan", "Simpan kartu", "Contoh", "Salin contoh", "Contoh disalin"],
    "it": ["Impara DevOps", "Tutte le categorie", "Cerca carte", "Cancella ricerca", "Categoria", "Mostra tutte le carte", "Mostra carte salvate ({count})", "Disattiva mescolamento", "Mescola le carte", "Interrompi cambio automatico", "Cambio automatico ogni 10 secondi", "Nessuna carta salvata finora", "Nessuna carta corrispondente", "Reimposta filtri", "Precedente", "Successiva", "Avanzamento", "Rimuovi dai salvati", "Salva carta", "Esempio", "Copia esempio", "Esempio copiato"],
    "ja": ["DevOps学習", "すべてのカテゴリ", "カードを検索", "検索をクリア", "カテゴリ", "すべてのカードを表示", "保存したカードを表示 ({count})", "シャッフルをオフにする", "カードをシャッフル", "自動切り替えを停止", "10秒ごとに自動切り替え", "保存したカードはまだありません", "一致するカードがありません", "フィルターをリセット", "前へ", "次へ", "進捗", "保存から削除", "カードを保存", "例", "例をコピー", "例をコピーしました"],
    "kn": ["DevOps ಕಲಿಯಿರಿ", "ಎಲ್ಲಾ ವರ್ಗಗಳು", "ಕಾರ್ಡ್‌ಗಳನ್ನು ಹುಡುಕಿ", "ಹುಡುಕಾಟ ತೆರವುಗೊಳಿಸಿ", "ವರ್ಗ", "ಎಲ್ಲಾ ಕಾರ್ಡ್‌ಗಳನ್ನು ತೋರಿಸಿ", "ಉಳಿಸಿದ ಕಾರ್ಡ್‌ಗಳನ್ನು ತೋರಿಸಿ ({count})", "ಷಫಲ್ ಆಫ್ ಮಾಡಿ", "ಕಾರ್ಡ್‌ಗಳನ್ನು ಷಫಲ್ ಮಾಡಿ", "ಸ್ವಯಂ ಬದಲಾವಣೆ ನಿಲ್ಲಿಸಿ", "ಪ್ರತಿ 10 ಸೆಕೆಂಡಿಗೆ ಸ್ವಯಂ ಬದಲಾವಣೆ", "ಇನ್ನೂ ಯಾವುದೇ ಕಾರ್ಡ್ ಉಳಿಸಿಲ್ಲ", "ಹೊಂದುವ ಕಾರ್ಡ್‌ಗಳಿಲ್ಲ", "ಫಿಲ್ಟರ್‌ಗಳನ್ನು ಮರುಹೊಂದಿಸಿ", "ಹಿಂದಿನದು", "ಮುಂದಿನದು", "ಪ್ರಗತಿ", "ಉಳಿಸಿದವುಗಳಿಂದ ತೆಗೆಯಿರಿ", "ಕಾರ್ಡ್ ಉಳಿಸಿ", "ಉದಾಹರಣೆ", "ಉದಾಹರಣೆ ನಕಲಿಸಿ", "ಉದಾಹರಣೆ ನಕಲಿಸಲಾಗಿದೆ"],
    "mai": ["DevOps सीखू", "सभ श्रेणी", "कार्ड खोजू", "खोज मेटाउ", "श्रेणी", "सभ कार्ड देखाउ", "सहेजल कार्ड देखाउ ({count})", "शफल बंद करू", "कार्ड शफल करू", "ऑटो स्वाइप बंद करू", "हर 10 सेकेंडपर ऑटो स्वाइप", "एखन धरि कोनो कार्ड सहेजल नहि गेल अछि", "कोनो मिलैत कार्ड नहि भेटल", "फिल्टर रीसेट करू", "पछिला", "अगिला", "प्रगति", "सहेजलसँ हटाउ", "कार्ड सहेजू", "उदाहरण", "उदाहरण कॉपी करू", "उदाहरण कॉपी भेल"],
    "ml": ["DevOps പഠിക്കാം", "എല്ലാ വിഭാഗങ്ങളും", "കാർഡുകൾ തിരയുക", "തിരയൽ മായ്ക്കുക", "വിഭാഗം", "എല്ലാ കാർഡുകളും കാണിക്കുക", "സംരക്ഷിച്ച കാർഡുകൾ കാണിക്കുക ({count})", "ഷഫിൾ ഓഫാക്കുക", "കാർഡുകൾ ഷഫിൾ ചെയ്യുക", "ഓട്ടോ സ്വാപ്പ് നിർത്തുക", "ഓരോ 10 സെക്കൻഡിലും ഓട്ടോ സ്വാപ്പ്", "ഇതുവരെ കാർഡുകളൊന്നും സംരക്ഷിച്ചിട്ടില്ല", "പൊരുത്തപ്പെടുന്ന കാർഡുകളില്ല", "ഫിൽട്ടറുകൾ പുനഃസജ്ജമാക്കുക", "മുമ്പത്തേത്", "അടുത്തത്", "പുരോഗതി", "സംരക്ഷിച്ചതിൽ നിന്ന് നീക്കുക", "കാർഡ് സംരക്ഷിക്കുക", "ഉദാഹരണം", "ഉദാഹരണം പകർത്തുക", "ഉദാഹരണം പകർത്തി"],
    "mni": ["DevOps ꯇꯝꯃꯤ", "ꯀꯦꯇꯦꯒꯣꯔꯤ ꯄꯨꯝꯅꯃꯛ", "ꯀꯥꯔꯗ ꯊꯤꯕꯤꯌꯨ", "ꯊꯤꯕꯥ ꯁꯦꯡꯗꯣꯛꯅꯕꯤꯌꯨ", "ꯀꯦꯇꯦꯒꯣꯔꯤ", "ꯀꯥꯔꯗ ꯄꯨꯝꯅꯃꯛ ꯎꯠꯇꯨ", "ꯁꯦꯚ ꯇꯧꯔꯕ ꯀꯥꯔꯗꯁꯤꯡ ꯎꯠꯇꯨ ({count})", "ꯁꯐꯜ ꯊꯤꯡꯗꯣꯛꯅꯕꯤꯌꯨ", "ꯀꯥꯔꯗꯁꯤꯡ ꯁꯐꯜ ꯇꯧꯕꯤꯌꯨ", "ꯑꯣꯇꯣ ꯁ꯭ꯕꯥꯞ ꯊꯤꯡꯗꯣꯛꯅꯕꯤꯌꯨ", "ꯁꯦꯀꯟꯗ 10 ꯅꯨꯃꯛ ꯑꯣꯇꯣ ꯁ꯭ꯕꯥꯞ", "ꯍꯧꯖꯤꯛ ꯀꯥꯔꯗ ꯁꯦꯚ ꯇꯧꯈꯤꯗꯦ", "ꯃꯥꯟꯅꯕ ꯀꯥꯔꯗ ꯂꯩꯇꯦ", "ꯐꯤꯜꯇꯔꯁꯤꯡ ꯔꯤꯁꯦꯠ ꯇꯧꯕꯤꯌꯨ", "ꯅꯃꯥꯟꯕ", "ꯃꯇꯨꯡꯒꯤ", "ꯄ꯭ꯔꯒ꯭ꯔꯦꯁ", "ꯁꯦꯚ ꯇꯧꯔꯕꯗꯒꯤ ꯂꯧꯊꯣꯀꯎ", "ꯀꯥꯔꯗ ꯁꯦꯚ ꯇꯧꯕꯤꯌꯨ", "ꯈꯨꯗꯝ", "ꯈꯨꯗꯝ ꯀꯣꯄꯤ ꯇꯧꯕꯤꯌꯨ", "ꯈꯨꯗꯝ ꯀꯣꯄꯤ ꯇꯧꯈ꯭ꯔꯦ"],
    "ne": ["DevOps सिक्नुहोस्", "सबै श्रेणी", "कार्ड खोज्नुहोस्", "खोज मेटाउनुहोस्", "श्रेणी", "सबै कार्ड देखाउनुहोस्", "सुरक्षित गरिएका कार्ड देखाउनुहोस् ({count})", "सफल बन्द गर्नुहोस्", "कार्ड सफल गर्नुहोस्", "अटो स्वाइप बन्द गर्नुहोस्", "प्रत्येक १० सेकेन्डमा अटो स्वाइप", "अहिलेसम्म कुनै कार्ड सुरक्षित गरिएको छैन", "मिल्दो कार्ड भेटिएन", "फिल्टर रिसेट गर्नुहोस्", "अघिल्लो", "अर्को", "प्रगति", "सुरक्षितबाट हटाउनुहोस्", "कार्ड सुरक्षित गर्नुहोस्", "उदाहरण", "उदाहरण कपी गर्नुहोस्", "उदाहरण कपी गरियो"],
    "or": ["DevOps ଶିଖନ୍ତୁ", "ସମସ୍ତ ବର୍ଗ", "କାର୍ଡ ଖୋଜନ୍ତୁ", "ଖୋଜା ସଫା କରନ୍ତୁ", "ବର୍ଗ", "ସମସ୍ତ କାର୍ଡ ଦେଖାନ୍ତୁ", "ସଞ୍ଚିତ କାର୍ଡ ଦେଖାନ୍ତୁ ({count})", "ଶଫଲ ବନ୍ଦ କରନ୍ତୁ", "କାର୍ଡ ଶଫଲ କରନ୍ତୁ", "ଅଟୋ ସ୍ୱାପ ବନ୍ଦ କରନ୍ତୁ", "ପ୍ରତି 10 ସେକେଣ୍ଡରେ ଅଟୋ ସ୍ୱାପ", "ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି କାର୍ଡ ସଞ୍ଚୟ ହୋଇନାହିଁ", "ମେଳ ଖାଉଥିବା କାର୍ଡ ନାହିଁ", "ଫିଲ୍ଟର ରିସେଟ କରନ୍ତୁ", "ପୂର୍ବବର୍ତ୍ତୀ", "ପରବର୍ତ୍ତୀ", "ପ୍ରଗତି", "ସଞ୍ଚିତରୁ ହଟାନ୍ତୁ", "କାର୍ଡ ସଞ୍ଚୟ କରନ୍ତୁ", "ଉଦାହରଣ", "ଉଦାହରଣ କପି କରନ୍ତୁ", "ଉଦାହରଣ କପି ହୋଇଛି"],
    "pa": ["DevOps ਸਿੱਖੋ", "ਸਾਰੀਆਂ ਸ਼੍ਰੇਣੀਆਂ", "ਕਾਰਡ ਖੋਜੋ", "ਖੋਜ ਮਿਟਾਓ", "ਸ਼੍ਰੇਣੀ", "ਸਾਰੇ ਕਾਰਡ ਦਿਖਾਓ", "ਸੰਭਾਲੇ ਕਾਰਡ ਦਿਖਾਓ ({count})", "ਸ਼ਫਲ ਬੰਦ ਕਰੋ", "ਕਾਰਡ ਸ਼ਫਲ ਕਰੋ", "ਆਟੋ ਸਵਾਈਪ ਬੰਦ ਕਰੋ", "ਹਰ 10 ਸਕਿੰਟ ਬਾਅਦ ਆਟੋ ਸਵਾਈਪ", "ਹਾਲੇ ਕੋਈ ਕਾਰਡ ਸੰਭਾਲਿਆ ਨਹੀਂ ਗਿਆ", "ਕੋਈ ਮੇਲ ਖਾਂਦਾ ਕਾਰਡ ਨਹੀਂ", "ਫਿਲਟਰ ਰੀਸੈੱਟ ਕਰੋ", "ਪਿਛਲਾ", "ਅਗਲਾ", "ਤਰੱਕੀ", "ਸੰਭਾਲੇ ਹੋਏ ਵਿੱਚੋਂ ਹਟਾਓ", "ਕਾਰਡ ਸੰਭਾਲੋ", "ਉਦਾਹਰਨ", "ਉਦਾਹਰਨ ਕਾਪੀ ਕਰੋ", "ਉਦਾਹਰਨ ਕਾਪੀ ਹੋ ਗਈ"],
    "pt": ["Aprender DevOps", "Todas as categorias", "Pesquisar cartões", "Limpar pesquisa", "Categoria", "Mostrar todos os cartões", "Mostrar cartões salvos ({count})", "Desativar embaralhamento", "Embaralhar cartões", "Parar troca automática", "Troca automática a cada 10 segundos", "Ainda não há cartões salvos", "Nenhum cartão correspondente", "Redefinir filtros", "Anterior", "Próximo", "Progresso", "Remover dos salvos", "Salvar cartão", "Exemplo", "Copiar exemplo", "Exemplo copiado"],
    "ru": ["Изучение DevOps", "Все категории", "Поиск карточек", "Очистить поиск", "Категория", "Показать все карточки", "Показать сохранённые карточки ({count})", "Выключить перемешивание", "Перемешать карточки", "Остановить автопереключение", "Автопереключение каждые 10 секунд", "Сохранённых карточек пока нет", "Подходящих карточек нет", "Сбросить фильтры", "Назад", "Далее", "Прогресс", "Удалить из сохранённых", "Сохранить карточку", "Пример", "Копировать пример", "Пример скопирован"],
    "sa": ["DevOps पठतु", "सर्वाः श्रेण्यः", "पत्राणि अन्विष्यताम्", "अन्वेषणं मार्जयतु", "श्रेणी", "सर्वाणि पत्राणि दर्शयतु", "सङ्गृहीतानि पत्राणि दर्शयतु ({count})", "मिश्रणं निरुणद्धु", "पत्राणि मिश्रयतु", "स्वयंपरिवर्तनं निरुणद्धु", "प्रत्येकं दशसेकण्डेषु स्वयंपरिवर्तनम्", "अद्यापि किमपि पत्रं सङ्गृहीतं नास्ति", "अनुरूपं पत्रं नास्ति", "छन्नकानि पुनःस्थापयतु", "पूर्वम्", "अग्रिमम्", "प्रगतिः", "सङ्गृहीतात् अपनयतु", "पत्रं सङ्गृह्णातु", "उदाहरणम्", "उदाहरणं प्रतिलिपिं करोतु", "उदाहरणं प्रतिलिपितम्"],
    "sat": ["DevOps ᱥᱤᱠᱷᱟᱣ", "ᱡᱷᱚᱛᱚ ᱞᱮᱠᱷᱟ", "ᱠᱟᱰ ᱥᱮᱸᱫᱽᱨᱟ", "ᱥᱮᱸᱫᱽᱨᱟ ᱪᱟᱯᱷᱟ", "ᱞᱮᱠᱷᱟ", "ᱡᱷᱚᱛᱚ ᱠᱟᱰ ᱫᱚᱨᱥᱟᱣ", "ᱥᱟᱸᱪᱟᱣ ᱠᱟᱰ ᱫᱚᱨᱥᱟᱣ ({count})", "ᱥᱟᱯᱷᱟᱞ ᱵᱚᱸᱫᱚ", "ᱠᱟᱰ ᱥᱟᱯᱷᱟᱞ ᱢᱮ", "ᱚᱴᱚ ᱥᱣᱟᱯ ᱵᱚᱸᱫᱚ", "ᱨᱮᱱ 10 ᱥᱮᱠᱮᱱᱰ ᱛᱟᱞᱟ ᱚᱴᱚ ᱥᱣᱟᱯ", "ᱱᱤᱛᱚᱜ ᱵᱟᱝ ᱠᱩᱠᱞᱤ ᱥᱟᱸᱪᱟᱣ ᱟᱠᱟᱱᱟ", "ᱢᱤᱞᱟᱣ ᱠᱟᱰ ᱵᱟᱝ ᱧᱟᱢᱚᱜ ᱠᱟᱱᱟ", "ᱯᱷᱤᱞᱴᱟᱨ ᱨᱤᱥᱮᱴ", "ᱥᱟᱶᱛᱟ", "ᱤᱱᱟᱹ ᱪᱟᱞᱟᱜ", "ᱡᱟᱹᱥᱛᱤ ᱠᱷᱚᱵᱚᱨ", "ᱥᱟᱸᱪᱟᱣ ᱠᱷᱚᱱ ᱫᱚᱜ ᱢᱮ", "ᱠᱟᱰ ᱥᱟᱸᱪᱟᱣ", "ᱢᱤᱫ ᱪᱤᱛᱟᱹᱨ", "ᱪᱤᱛᱟᱹᱨ ᱱᱚᱠᱚᱞ", "ᱪᱤᱛᱟᱹᱨ ᱱᱚᱠᱚᱞ ᱦᱩᱭᱮᱱᱟ"],
    "sd": ["DevOps سکو", "سڀ زمرا", "ڪارڊ ڳوليو", "ڳولا صاف ڪريو", "زمرو", "سڀ ڪارڊ ڏيکاريو", "محفوظ ڪيل ڪارڊ ڏيکاريو ({count})", "شفل بند ڪريو", "ڪارڊ شفل ڪريو", "آٽو سوائپ بند ڪريو", "هر 10 سيڪنڊن کانپوءِ آٽو سوائپ", "اڃا ڪو ڪارڊ محفوظ نه ڪيو ويو آهي", "ڪو ملندڙ ڪارڊ ناهي", "فلٽر ري سيٽ ڪريو", "پويون", "ايندڙ", "پيش رفت", "محفوظ ڪيل مان هٽايو", "ڪارڊ محفوظ ڪريو", "مثال", "مثال ڪاپي ڪريو", "مثال ڪاپي ٿي ويو"],
    "ta": ["DevOps கற்றல்", "அனைத்து வகைகள்", "அட்டைகளைத் தேடு", "தேடலை அழி", "வகை", "அனைத்து அட்டைகளையும் காட்டு", "சேமித்த அட்டைகளைக் காட்டு ({count})", "கலக்குவதை நிறுத்து", "அட்டைகளைக் கலக்கு", "தானியங்கி மாற்றத்தை நிறுத்து", "ஒவ்வொரு 10 வினாடிக்கும் தானியங்கி மாற்றம்", "இன்னும் சேமித்த அட்டைகள் இல்லை", "பொருந்தும் அட்டைகள் இல்லை", "வடிகட்டிகளை மீட்டமை", "முந்தையது", "அடுத்தது", "முன்னேற்றம்", "சேமித்தவற்றிலிருந்து நீக்கு", "அட்டையைச் சேமி", "எடுத்துக்காட்டு", "எடுத்துக்காட்டை நகலெடு", "எடுத்துக்காட்டு நகலெடுக்கப்பட்டது"],
    "te": ["DevOps నేర్చుకోండి", "అన్ని వర్గాలు", "కార్డులను వెతకండి", "శోధనను తొలగించండి", "వర్గం", "అన్ని కార్డులను చూపండి", "సేవ్ చేసిన కార్డులను చూపండి ({count})", "షఫుల్ ఆఫ్ చేయండి", "కార్డులను షఫుల్ చేయండి", "ఆటో స్వాప్ ఆపండి", "ప్రతి 10 సెకన్లకు ఆటో స్వాప్", "ఇంకా కార్డులు ఏవీ సేవ్ చేయలేదు", "సరిపోలే కార్డులు లేవు", "ఫిల్టర్లను రీసెట్ చేయండి", "మునుపటిది", "తదుపరిది", "పురోగతి", "సేవ్ చేసిన వాటి నుండి తొలగించండి", "కార్డును సేవ్ చేయండి", "ఉదాహరణ", "ఉదాహరణను కాపీ చేయండి", "ఉదాహరణ కాపీ అయింది"],
    "tr": ["DevOps Öğrenme", "Tüm kategoriler", "Kartlarda ara", "Aramayı temizle", "Kategori", "Tüm kartları göster", "Kayıtlı kartları göster ({count})", "Karıştırmayı kapat", "Kartları karıştır", "Otomatik geçişi durdur", "Her 10 saniyede bir otomatik geçiş", "Henüz kayıtlı kart yok", "Eşleşen kart yok", "Filtreleri sıfırla", "Önceki", "Sonraki", "İlerleme", "Kayıtlılardan kaldır", "Kartı kaydet", "Örnek", "Örneği kopyala", "Örnek kopyalandı"],
    "ur": ["DevOps سیکھیں", "تمام زمرے", "کارڈ تلاش کریں", "تلاش صاف کریں", "زمرہ", "تمام کارڈ دکھائیں", "محفوظ کردہ کارڈ دکھائیں ({count})", "شفل بند کریں", "کارڈ شفل کریں", "آٹو سوائپ بند کریں", "ہر 10 سیکنڈ بعد آٹو سوائپ", "ابھی کوئی کارڈ محفوظ نہیں کیا گیا", "کوئی مماثل کارڈ نہیں ملا", "فلٹر ری سیٹ کریں", "پچھلا", "اگلا", "پیش رفت", "محفوظ شدہ سے ہٹائیں", "کارڈ محفوظ کریں", "مثال", "مثال کاپی کریں", "مثال کاپی ہو گئی"],
    "zh": ["DevOps 学习", "所有类别", "搜索卡片", "清除搜索", "类别", "显示所有卡片", "显示已保存的卡片（{count}）", "关闭随机排序", "随机排序卡片", "停止自动切换", "每 10 秒自动切换", "还没有已保存的卡片", "没有匹配的卡片", "重置筛选", "上一张", "下一张", "进度", "从已保存中移除", "保存卡片", "示例", "复制示例", "示例已复制"],
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
            if code == "en" and key == "learningControlShowSaved":
                lines.append(
                    '  "@learningControlShowSaved": { "placeholders": '
                    '{ "count": { "type": "int" } } }'
                )
        end = text.rstrip().rfind("}")
        body = text[:end].rstrip()
        path.write_text(
            body + ",\n" + ",\n".join(lines) + "\n}\n", encoding="utf-8", newline="\n"
        )
        print("updated", path.name)


if __name__ == "__main__":
    main()
