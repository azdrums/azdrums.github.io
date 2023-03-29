---
title: "Android ActionBar for Qt"
---

Originally developed by [Stefan Frings],
an alternate updated version at [Muhammad Bashir Al-Noimi GitHub Page].

![Action bar image]

## ActionBar

Google describes an [Action Bar at Android Patterns]
how the title bar of a proper Android Application should look like.
The class **ActionBar** implements a widget that provides this design by using Qt features.

The original Stefan Frings source code download: [ActionBar.zip].

* The app-icon can provide up-navigation and a list of navigation links, which can optionally have icons.
* The button bar has an automatic overflow on the right side as usual on Android.
* The text labels of the buttons are displayed when there is enough space.
* The ActionBar resizes together with the window.

As usual in Qt, this class works also fine on desktop computers. It may be used
there as an alternative to the traditional menu and toolbar.

![Navigation menu image]
![Overflow menu image]
![Up navigation image]

Programming example:

```cpp
MainWindow::MainWindow(QWidget *parent) : QWidget(parent)
{
    // Main layout of the application window
    QVBoxLayout *layout = new QVBoxLayout(this);
    layout->setMargin(0);
    layout->setSizeConstraint(QLayout::SetNoConstraint);

    // Action bar
    ActionBar *actionBar = new ActionBar(this);
    actionBar->setTitle("My App");
    actionBar->addNavigation("News");
    actionBar->addNavigation("Weather");
    actionBar->addAction(QIcon(":/icons/search"), "Search");
    actionBar->addAction(QIcon(":/icons/call"), "Call");
    actionBar->addAction(QIcon(":/icons/settings"), "Settings");
    layout->addWidget(actionBar);

    // Content of main window below the action bar
    layout->addWidget(new QLabel("Hello", this));
    layout->addStretch();
}
```

[Stefan Frings]:                        http://web.archive.org/web/20170101022052/http://stefanfrings.de/android_qt/index-en.html
[Muhammad Bashir Al-Noimi GitHub Page]: https://github.com/mbnoimi/QtActionBar
[Action Bar at Android Patterns]:       https://unitid.nl/androidpatterns/uap_pattern/action-bar
[ActionBar.zip]:                        ../assets/files/ActionBar.zip
[Action bar image]:                     ../assets/img/smartwidgets/actionbar.png
[Navigation menu image]:                ../assets/img/smartwidgets/actionbar_navigation.png
[Overflow menu image]:                  ../assets/img/smartwidgets/actionbar_overflow.png
[Up navigation image]:                  ../assets/img/smartwidgets/actionbar_up.png
