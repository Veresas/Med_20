﻿#pragma checksum "..\..\..\Pages\PageMain.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "53D40DB3463FAFA074BAB3B76D4B8D51083539E4F56BC7F01188A2E6C444FFEC"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Med_20.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Med_20.Pages {
    
    
    /// <summary>
    /// PageMain
    /// </summary>
    public partial class PageMain : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_enter;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_rep;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_aplication;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_reserch;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_bill;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_historyEnter;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button but_resources;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\Pages\PageMain.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Frame SupFrame;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Med_20;component/pages/pagemain.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\PageMain.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.but_enter = ((System.Windows.Controls.Button)(target));
            
            #line 17 "..\..\..\Pages\PageMain.xaml"
            this.but_enter.Click += new System.Windows.RoutedEventHandler(this.but_enter_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.but_rep = ((System.Windows.Controls.Button)(target));
            return;
            case 3:
            this.but_aplication = ((System.Windows.Controls.Button)(target));
            return;
            case 4:
            this.but_reserch = ((System.Windows.Controls.Button)(target));
            return;
            case 5:
            this.but_bill = ((System.Windows.Controls.Button)(target));
            return;
            case 6:
            this.but_historyEnter = ((System.Windows.Controls.Button)(target));
            
            #line 22 "..\..\..\Pages\PageMain.xaml"
            this.but_historyEnter.Click += new System.Windows.RoutedEventHandler(this.but_historyEnter_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.but_resources = ((System.Windows.Controls.Button)(target));
            return;
            case 8:
            this.SupFrame = ((System.Windows.Controls.Frame)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

