i18n-1-generate-messages:
        pygettext3.6 -d base -o locales/base.pot generator.py
i18n-2-copy-template-to-langs:
        cp locales/base.pot locales/en/LC_MESSAGES/base.po
        cp locales/base.pot locales/es/LC_MESSAGES/base.po
i18n-2-merge-pot-and-po:
        msgmerge --update locales/es/LC_MESSAGES/base.po locales/base.pot
i18n-compile-en:
        cd locales/en/LC_MESSAGES
        msgfmt -o base.mo base
i18n-compile-es:
        cd locales/es/LC_MESSAGES
        msgfmt -o base.mo base
i18n-3-parse-po-generate-mo: i18n-compile-en i18n-compile-es
