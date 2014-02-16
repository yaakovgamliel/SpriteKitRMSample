class SpriteViewController < UIViewController
  def viewDidLoad
    super
    #Configure view
    sk_view = SKView.new
    sk_view.frame = self.view.frame
    self.view.addSubview(sk_view)

    sk_view.showsFPS = true
    sk_view.showsNodeCount = true

    scene = MyScene.sceneWithSize(sk_view.bounds.size)
    scene.scaleMode = SKSceneScaleModeAspectFill
    sk_view.presentScene(scene)

  end
end
