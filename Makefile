all: PhoneNumberMetadata.js

%.js: %.xml xml2meta.py
	python xml2meta.py $< > $@

PhoneNumberMetadata.xml:
	curl https://raw.githubusercontent.com/googlei18n/libphonenumber/v8.4.1/resources/PhoneNumberMetadata.xml > $@

clean:
	rm -f PhoneNumberMetadata.xml *~
