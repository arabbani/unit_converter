## 1.3.0

- Bug fixes

## 1.1.3

- Internal cleanup

## 1.1.2

- Changelog file order changes.
- Code quality improvement

## 1.1.1

- Bug fixes. (The previous verion was not working due to an issue with uninitialized variable). Please use the latest version.

## 1.1.0

**Breaking Change:** New method `getConverter` added to get an instance of `UnitConverter`. Previously it was done by instantiating `UnitConverter` directly. We have made the `UnitConverter` class private to the library. So, use `getConverter` passing the type of `Converter` you need.

- Code cleanup.
- Better API documentation.

## 1.0.0+1

- Proper commenting on public APIS.

## 1.0.0

- Fully working version. Various types of converter added.
