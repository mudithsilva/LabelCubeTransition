# LabelCubeTransition
Smooth and simple UILabel Transition in Swift.

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)

## Features

- [x] Show any UILabel item and text.
- [x] Easy addon to your project.
- [x] Customizable animation duration.

## Installation

Simply copy and paste LabelCubeTransition File on your Project :)

## Usage

#### Step 01

Connect your UILabel from the storyboard.

```
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    
    
 }
```

#### Step 02

Simpley call this function to make the UILabel Cube transition.

```
    LabelCubeTransition.cubeTransition(label: self.testLabel, text: "Next Label Name",  direction: .fromTop)

```
                                                        OR
```
    LabelCubeTransition.cubeTransition(label: self.testLabel, text: "Next Label Name",  direction: .fromBottom)

```

if you want to change the animation duration please go to the LabelCubeTransition file and change the ``withDuration`` value

eg:- `` UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut,
                       animations: {}, completion: {_ in }
        ) ``
