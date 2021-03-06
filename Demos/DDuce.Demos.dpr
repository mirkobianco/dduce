program DDuce.Demos;

uses
  FastMM4,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.SysStyles,
  Demo.Contact in 'Demo.Contact.pas',
  Demo.Data in 'Demo.Data.pas' {dmData: TDataModule},
  Demo.DDuce.DBGridView in 'Demo.DDuce.DBGridView.pas' {frmDBGridView},
  Demo.DDuce.DynamicRecord in 'Demo.DDuce.DynamicRecord.pas' {frmDynamicRecords},
  Demo.DDuce.PropertyInspector in 'Demo.DDuce.PropertyInspector.pas' {frmPropertyInspector},
  Demo.DDuce.Reflect in 'Demo.DDuce.Reflect.pas' {frmReflect},
  Demo.DDuce.ScopedReference in 'Demo.DDuce.ScopedReference.pas' {frmScopedReferences},
  Demo.DDuce.XMLTree in 'Demo.DDuce.XMLTree.pas' {frmXMLTree},
  Demo.Factories in 'Demo.Factories.pas',
  Demo.MainForm in 'Demo.MainForm.pas' {frmMainMenu},
  Demo.Manager in 'Demo.Manager.pas',
  Demo.Registration in 'Demo.Registration.pas',
  Demo.Utils in 'Demo.Utils.pas',
  Demo.DDuce.Logger in 'Demo.DDuce.Logger.pas' {frmLogger},
  Demo.DDuce.Inspector in 'Demo.DDuce.Inspector.pas' {frmInspector},
  Demo.DDuce.GridView in 'Demo.DDuce.GridView.pas' {frmGridView},
  DDuce.DynamicRecord in '..\Source\DDuce.DynamicRecord.pas',
  DDuce.RandomData in '..\Source\DDuce.RandomData.pas',
  DDuce.Reflect in '..\Source\DDuce.Reflect.pas',
  DDuce.ScopedReference in '..\Source\DDuce.ScopedReference.pas',
  DDuce.Components.DBGridView in '..\Source\Components\DDuce.Components.DBGridView.pas',
  DDuce.Components.GridView in '..\Source\Components\DDuce.Components.GridView.pas',
  DDuce.Components.Inspector in '..\Source\Components\DDuce.Components.Inspector.pas',
  DDuce.Components.LogTree in '..\Source\Components\DDuce.Components.LogTree.pas',
  DDuce.Components.PropertyInspector.CollectionEditor in '..\Source\Components\DDuce.Components.PropertyInspector.CollectionEditor.pas' {frmCollectionEditor},
  DDuce.Components.PropertyInspector in '..\Source\Components\DDuce.Components.PropertyInspector.pas',
  DDuce.Components.PropertyInspector.StringsEditor in '..\Source\Components\DDuce.Components.PropertyInspector.StringsEditor.pas' {StringsEditorDialog},
  DDuce.Components.XMLTree.Editors in '..\Source\Components\DDuce.Components.XMLTree.Editors.pas',
  DDuce.Components.XMLTree.NodeAttributes in '..\Source\Components\DDuce.Components.XMLTree.NodeAttributes.pas',
  DDuce.Components.XMLTree in '..\Source\Components\DDuce.Components.XMLTree.pas',
  DSharp.Bindings.Collections in '..\Source\Dependencies\DSharp\DSharp.Bindings.Collections.pas',
  DSharp.Bindings.CollectionView in '..\Source\Dependencies\DSharp\DSharp.Bindings.CollectionView.pas',
  DSharp.Bindings.Notifications in '..\Source\Dependencies\DSharp\DSharp.Bindings.Notifications.pas',
  DSharp.Collections.ObservableCollection in '..\Source\Dependencies\DSharp\DSharp.Collections.ObservableCollection.pas',
  DSharp.Core.Collections in '..\Source\Dependencies\DSharp\DSharp.Core.Collections.pas',
  DSharp.Core.DataTemplates.Default in '..\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.Default.pas',
  DSharp.Core.DataTemplates in '..\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.pas',
  DSharp.Core.DependencyProperty in '..\Source\Dependencies\DSharp\DSharp.Core.DependencyProperty.pas',
  DSharp.Core.Expressions in '..\Source\Dependencies\DSharp\DSharp.Core.Expressions.pas',
  DSharp.Core.Framework in '..\Source\Dependencies\DSharp\DSharp.Core.Framework.pas',
  DSharp.Core.PropertyChangedBase in '..\Source\Dependencies\DSharp\DSharp.Core.PropertyChangedBase.pas',
  DSharp.Core.Reflection in '..\Source\Dependencies\DSharp\DSharp.Core.Reflection.pas',
  DSharp.Core.Utils in '..\Source\Dependencies\DSharp\DSharp.Core.Utils.pas',
  DSharp.Windows.ColumnDefinitions.ControlTemplate in '..\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.ControlTemplate.pas',
  DSharp.Windows.ColumnDefinitions in '..\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.pas',
  DSharp.Windows.ControlTemplates in '..\Source\Dependencies\DSharp\DSharp.Windows.ControlTemplates.pas',
  DSharp.Windows.CustomPresenter in '..\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.pas',
  DSharp.Windows.CustomPresenter.Types in '..\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.Types.pas',
  DSharp.Windows.TreeViewPresenter in '..\Source\Dependencies\DSharp\DSharp.Windows.TreeViewPresenter.pas',
  NativeXml in '..\Source\Dependencies\NativeXml\NativeXml.pas',
  NativeXmlCodepages in '..\Source\Dependencies\NativeXml\NativeXmlCodepages.pas',
  NativeXmlNodes in '..\Source\Dependencies\NativeXml\NativeXmlNodes.pas',
  sdDebug in '..\Source\Dependencies\NativeXml\sdDebug.pas',
  sdStreams in '..\Source\Dependencies\NativeXml\sdStreams.pas',
  sdStringTable in '..\Source\Dependencies\NativeXml\sdStringTable.pas',
  DDuce.Logging.Appenders.LogTree in '..\Source\Logging\DDuce.Logging.Appenders.LogTree.pas',
  DDuce.Logging.Appenders.WinIPC in '..\Source\Logging\DDuce.Logging.Appenders.WinIPC.pas',
  DDuce.Components.Factories in '..\Source\Components\DDuce.Components.Factories.pas',
  Demo.DDuce.Editor in 'Demo.DDuce.Editor.pas' {frmEditor},
  DDuce.Editor.ActionList.Templates in '..\Source\Modules\Editor\DDuce.Editor.ActionList.Templates.pas',
  DDuce.Editor.ActionList.ToolView in '..\Source\Modules\Editor\DDuce.Editor.ActionList.ToolView.pas' {frmActionListView},
  DDuce.Editor.AlignLines.Settings in '..\Source\Modules\Editor\DDuce.Editor.AlignLines.Settings.pas',
  DDuce.Editor.CharacterMap.ToolView in '..\Source\Modules\Editor\DDuce.Editor.CharacterMap.ToolView.pas' {frmCharacterMap},
  DDuce.Editor.Codeformatters in '..\Source\Modules\Editor\DDuce.Editor.Codeformatters.pas',
  DDuce.Editor.Codeformatters.Sql in '..\Source\Modules\Editor\DDuce.Editor.Codeformatters.Sql.pas',
  DDuce.Editor.Codetags in '..\Source\Modules\Editor\DDuce.Editor.Codetags.pas',
  DDuce.Editor.Colors.Settings in '..\Source\Modules\Editor\DDuce.Editor.Colors.Settings.pas',
  DDuce.Editor.Commands in '..\Source\Modules\Editor\DDuce.Editor.Commands.pas',
  DDuce.Editor.Commentstripper in '..\Source\Modules\Editor\DDuce.Editor.Commentstripper.pas',
  DDuce.Editor.Events in '..\Source\Modules\Editor\DDuce.Editor.Events.pas',
  DDuce.Editor.Factories.Manager in '..\Source\Modules\Editor\DDuce.Editor.Factories.Manager.pas',
  DDuce.Editor.Factories.Menus in '..\Source\Modules\Editor\DDuce.Editor.Factories.Menus.pas',
  DDuce.Editor.Factories in '..\Source\Modules\Editor\DDuce.Editor.Factories.pas',
  DDuce.Editor.Factories.Settings in '..\Source\Modules\Editor\DDuce.Editor.Factories.Settings.pas',
  DDuce.Editor.Factories.Toolbars in '..\Source\Modules\Editor\DDuce.Editor.Factories.Toolbars.pas',
  DDuce.Editor.Factories.Views in '..\Source\Modules\Editor\DDuce.Editor.Factories.Views.pas',
  DDuce.Editor.Highlighters in '..\Source\Modules\Editor\DDuce.Editor.Highlighters.pas',
  DDuce.Editor.Interfaces in '..\Source\Modules\Editor\DDuce.Editor.Interfaces.pas',
  DDuce.Editor.Manager in '..\Source\Modules\Editor\DDuce.Editor.Manager.pas' {dmEditorManager: TDataModule},
  DDuce.Editor.Options.Settings in '..\Source\Modules\Editor\DDuce.Editor.Options.Settings.pas',
  DDuce.Editor.Resources in '..\Source\Modules\Editor\DDuce.Editor.Resources.pas' {ResourcesDataModule: TDataModule},
  DDuce.Editor.Search.Data in '..\Source\Modules\Editor\DDuce.Editor.Search.Data.pas',
  DDuce.Editor.Search.Engine in '..\Source\Modules\Editor\DDuce.Editor.Search.Engine.pas',
  DDuce.Editor.Search.Engine.Settings in '..\Source\Modules\Editor\DDuce.Editor.Search.Engine.Settings.pas',
  DDuce.Editor.Search.Templates in '..\Source\Modules\Editor\DDuce.Editor.Search.Templates.pas',
  DDuce.Editor.Search.Toolview in '..\Source\Modules\Editor\DDuce.Editor.Search.Toolview.pas' {frmSearchForm},
  DDuce.Editor.Selectioninfo.ToolView in '..\Source\Modules\Editor\DDuce.Editor.Selectioninfo.ToolView.pas',
  DDuce.Editor.Settings in '..\Source\Modules\Editor\DDuce.Editor.Settings.pas',
  DDuce.Editor.Sortstrings.Settings in '..\Source\Modules\Editor\DDuce.Editor.Sortstrings.Settings.pas',
  DDuce.Editor.Sortstrings.Toolview in '..\Source\Modules\Editor\DDuce.Editor.Sortstrings.Toolview.pas' {frmSortStrings},
  DDuce.Editor.Test.ToolView in '..\Source\Modules\Editor\DDuce.Editor.Test.ToolView.pas',
  DDuce.Editor.Tools.Settings in '..\Source\Modules\Editor\DDuce.Editor.Tools.Settings.pas',
  DDuce.Editor.ToolView.Base in '..\Source\Modules\Editor\DDuce.Editor.ToolView.Base.pas' {CustomEditorToolView},
  DDuce.Editor.ToolView.Manager in '..\Source\Modules\Editor\DDuce.Editor.ToolView.Manager.pas',
  DDuce.Editor.Types in '..\Source\Modules\Editor\DDuce.Editor.Types.pas',
  DDuce.Editor.Utils in '..\Source\Modules\Editor\DDuce.Editor.Utils.pas',
  DDuce.Editor.View in '..\Source\Modules\Editor\DDuce.Editor.View.pas' {EditorView},
  DDuce.Editor.Viewlist.Data in '..\Source\Modules\Editor\DDuce.Editor.Viewlist.Data.pas',
  DDuce.Editor.Viewlist.ToolView in '..\Source\Modules\Editor\DDuce.Editor.Viewlist.ToolView.pas' {frmViewList},
  DDuce.FormSettings in '..\Source\Modules\DDuce.FormSettings.pas',
  DDuce.Factories in '..\Source\Modules\DDuce.Factories.pas',
  DDuce.Editor.AlignLines.ToolView in '..\Source\Modules\Editor\DDuce.Editor.AlignLines.ToolView.pas' {frmAlignLines},
  DDuce.Logger.Channels.Base in '..\Source\Modules\Logger\DDuce.Logger.Channels.Base.pas',
  DDuce.Logger.Channels.LogFile in '..\Source\Modules\Logger\DDuce.Logger.Channels.LogFile.pas',
  DDuce.Logger.Channels in '..\Source\Modules\Logger\DDuce.Logger.Channels.pas',
  DDuce.Logger.Channels.WinIPC in '..\Source\Modules\Logger\DDuce.Logger.Channels.WinIPC.pas',
  DDuce.Logger.Channels.ZeroMQ in '..\Source\Modules\Logger\DDuce.Logger.Channels.ZeroMQ.pas',
  DDuce.Logger.Factories in '..\Source\Modules\Logger\DDuce.Logger.Factories.pas',
  DDuce.Logger.Interfaces in '..\Source\Modules\Logger\DDuce.Logger.Interfaces.pas',
  DDuce.Logger.Base in '..\Source\Modules\Logger\DDuce.Logger.Base.pas',
  DDuce.WinIPC.Client in '..\Source\DDuce.WinIPC.Client.pas',
  DDuce.WinIPC.Server in '..\Source\DDuce.WinIPC.Server.pas',
  DDuce.Logger in '..\Source\Modules\Logger\DDuce.Logger.pas',
  ZeroMQ.API in '..\Source\Dependencies\ZeroMQ\ZeroMQ.API.pas',
  ZeroMQ in '..\Source\Dependencies\ZeroMQ\ZeroMQ.pas',
  DDuce.Logger.Channels.WinODS in '..\Source\Modules\Logger\DDuce.Logger.Channels.WinODS.pas',
  DDuce.Editor.Filter.Data in '..\Source\Modules\Editor\DDuce.Editor.Filter.Data.pas',
  DDuce.Editor.Filter.Settings in '..\Source\Modules\Editor\DDuce.Editor.Filter.Settings.pas',
  DDuce.Editor.Filter.Toolview in '..\Source\Modules\Editor\DDuce.Editor.Filter.Toolview.pas' {frmFilter},
  DDuce.RTTEye in '..\Source\Modules\RTTEye\DDuce.RTTEye.pas' {frmRTTEye},
  DDuce.ObjectInspector in '..\Source\Modules\ObjectInspector\DDuce.ObjectInspector.pas' {frmComponentInspector};

{$R *.res}

begin
  {$WARNINGS OFF}
  ReportMemoryLeaksOnShutdown := DebugHook > 0;
  {$WARNINGS ON}
  //TStyleManager.TrySetStyle('Windows10');
  Application.Initialize;

  Application.MainFormOnTaskbar := True;
  RegisterDemos;
  if DemoManager.ItemList.Count = 1 then
  begin
    DemoManager.Execute(DemoManager.ItemList.Single);
  end
  else
  begin
    Application.CreateForm(TfrmMainMenu, frmMainMenu);
  end;
  Application.Run;
end.
