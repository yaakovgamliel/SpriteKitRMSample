class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    sprite_vc = SpriteViewController.new
    @window.rootViewController = sprite_vc
    true
  end
end
