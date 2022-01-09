// DO NOT EDIT. This is code generated via package:gen_lang/generate.dart

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

final _$en = $en();

class $en extends MessageLookupByLibrary {
  get localeName => 'en';
  
  final messages = {
		"sliderHeading1" : MessageLookupByLibrary.simpleMessage("Easy Exchange!"),
		"sliderSubHeading1" : MessageLookupByLibrary.simpleMessage("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies, erat vitae porta consequat."),
		"sliderHeading2" : MessageLookupByLibrary.simpleMessage("Easy to Use!"),
		"sliderSubHeading2" : MessageLookupByLibrary.simpleMessage("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies, erat vitae porta consequat."),
		"sliderHeading3" : MessageLookupByLibrary.simpleMessage("Connect with Others"),
		"sliderSubHeading3" : MessageLookupByLibrary.simpleMessage("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultricies, erat vitae porta consequat."),
		"next" : MessageLookupByLibrary.simpleMessage("Next"),
		"skip" : MessageLookupByLibrary.simpleMessage("Skip"),
		"getStarted" : MessageLookupByLibrary.simpleMessage("Get started"),

  };
}

final _$it = $it();

class $it extends MessageLookupByLibrary {
  get localeName => 'it';
  
  final messages = {
		"sliderHeading1" : MessageLookupByLibrary.simpleMessage("Scambio semplice!"),
		"sliderSubHeading1" : MessageLookupByLibrary.simpleMessage("Il dolore stesso è l'amore, il principale sistema di archiviazione. Non c'era alcun compenso, era la porta alle conseguenze della vita."),
		"sliderHeading2" : MessageLookupByLibrary.simpleMessage("Semplice da usare!"),
		"sliderSubHeading2" : MessageLookupByLibrary.simpleMessage("Il dolore stesso è l'amore, il principale sistema di archiviazione. Non c'era alcun compenso, era la porta alle conseguenze della vita."),
		"sliderHeading3" : MessageLookupByLibrary.simpleMessage("Connettiti con gli altri"),
		"sliderSubHeading3" : MessageLookupByLibrary.simpleMessage("Il dolore stesso è l'amore, il principale sistema di archiviazione. Non c'era alcun compenso, era la porta alle conseguenze della vita."),
		"next" : MessageLookupByLibrary.simpleMessage("Avanti"),
		"skip" : MessageLookupByLibrary.simpleMessage("Salta"),
		"getStarted" : MessageLookupByLibrary.simpleMessage("Iniziamo"),

  };
}



typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
	"en": () => Future.value(null),
	"it": () => Future.value(null),

};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case "en":
        return _$en;
    case "it":
        return _$it;

    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName,
          (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future.value(false) : lib());

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

// ignore_for_file: unnecessary_brace_in_string_interps
