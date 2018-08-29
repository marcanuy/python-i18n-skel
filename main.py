import gettext

if __name__ == "__main__":
    for lang in ['es', 'en']:
        # set current language
        lang_translations = gettext.translation('base', localedir='locales', languages=[lang])
        lang_translations.install()
        # define _ shortcut for translations
        _ = lang_translations.gettext
        # mark a string translatable
        print(_("Hello World!!!!"))
        print(_("Good Bye"))
