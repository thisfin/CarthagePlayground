# CarthagePlayground

## Swift Playgrounds use 3rd framework with Carthage

## git clone & run

``` bash
carthage update --platform ios
```

## create step

1. create new project "Test"

    XCode: File > New > Project > Cross-platform > Empty > Named > "Test"

1. setting Carthage

    command: at project directory

    ```bash
    echo github \"ReactiveX/RxSwift\" > Cartfile
    carthage update --platform iOS
    ```

1. create Playground "MyTest.playground"

    XCode: File > New > Playground > Blank > Named > Select Project Directory

    XCode: File > Add File to "Test" > Select "MyTest.playground"

1. create workspace "Test.xcworkspace"

    Xcode: Click "Test"

    XCode: File > Save As Workspace > Named > Select Project Directory

    Close XCode

    Open "Test.xcworkspace"

1. copy framework

    XCode: File > New > Target > Cross-platform > Aggregate > Named > "TestAggregate"

    TARGETS > TestAggregate > Build Phases > + > New Run Script Phase > input

    ```bash
    cp -rv "${SRCROOT}/Carthage/Build/iOS/" "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
    ```

1. build the project ⌘B

[reference](https://stackoverflow.com/questions/29882996/how-to-use-frameworks-imported-with-carthage-in-swift-playground)
