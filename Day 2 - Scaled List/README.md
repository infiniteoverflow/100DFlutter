# Scaled List

A Simple List of Horizontal Cards that scales the card in view !!

<img src="working.gif" height=510 width=260/>

```dart
ScaledList(
  itemCount: images.length,
  itemColor: (index) => colors[index],
  itemBuilder: (index,selectedIndex) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/${images[index]}'),
          )
        ),
      ),
    );
  },
),

```
