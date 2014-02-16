class MyScene < SKScene
  def initWithSize(size)
    super size

    if (self)
      # Apple's code uses SKColor but that is just a macro for UIColor in iOS or NSColor in the Mac
      self.backgroundColor = UIColor.colorWithRed(0.15, green:0.15, blue:0.3, alpha:1.0)
      my_label = SKLabelNode.labelNodeWithFontNamed('Chalkduster')
      my_label.text = 'SpriteKit'
      my_label.fontSize = 30
      my_label.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
      self.addChild(my_label)
    end
    self
  end

  def touchesBegan(touches, withEvent:event)
    # Call when touche begins
    for touch in touches
      location = touch.locationInNode(self)
      sprite = SKSpriteNode.spriteNodeWithImageNamed('Spaceship')
      sprite.position = location
      action = SKAction.rotateByAngle(3.161514, duration:1)
      sprite.runAction(SKAction.repeatActionForever(action))
      self.addChild(sprite)
    end
  end
end









