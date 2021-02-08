// This file has been autogenerated from a class added in the UI designer.

using System;
using AppKit;
using udp_bouncer.Shared;
using Xamarin.Forms;

namespace udp_bouncer.MacOS
{
    public partial class Container : NSViewController
	{
        NSViewController _contentView;
        private NavigationPage CurrentNavigationPage = Application.Current.MainPage as NavigationPage;

        public Container (IntPtr handle) : base (handle)
		{
		}

        partial void BackButtonPressed(Foundation.NSObject sender)
        {
            ((NavigationPage)App.Current.MainPage).PopAsync();
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            AddChildViewController(_contentView);
            Content.AddSubview(_contentView.View);
            _contentView.View.Frame = Content.Frame;

            if(CurrentNavigationPage != null)
            {
                CurrentNavigationPage.Pushed += Container_Pushed;
                CurrentNavigationPage.Popped += Container_Pushed;
                SetNavigationBarState();
            }
        }

        private void Container_Pushed(object sender, NavigationEventArgs e)
        {
            SetNavigationBarState();
        }

        private void SetNavigationBarState()
        { 
            var currentPage = CurrentNavigationPage.CurrentPage;
            TitleLabel.StringValue = currentPage.Title;
            var isPoppedToRootPage = currentPage == CurrentNavigationPage.RootPage;
            BackButton.Hidden = isPoppedToRootPage;
        }

        public override void ViewDidLayout()
        {
            base.ViewDidLayout();
            _contentView.View.Frame = Content.Frame;
        }

        public override void LoadView()
        {
            base.LoadView();
        }

        public void SetContent(NSViewController viewController)
        { 
            _contentView = viewController;
            
        }
    }
}
