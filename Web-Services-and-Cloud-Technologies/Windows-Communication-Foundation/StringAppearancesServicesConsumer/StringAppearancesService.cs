﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------



[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
[System.ServiceModel.ServiceContractAttribute(ConfigurationName="IStringAppearancesService")]
public interface IStringAppearancesService
{
    
    [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IStringAppearancesService/CountAppearances", ReplyAction="http://tempuri.org/IStringAppearancesService/CountAppearancesResponse")]
    int CountAppearances(string searched, string text);
    
    [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IStringAppearancesService/CountAppearances", ReplyAction="http://tempuri.org/IStringAppearancesService/CountAppearancesResponse")]
    System.Threading.Tasks.Task<int> CountAppearancesAsync(string searched, string text);
}

[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public interface IStringAppearancesServiceChannel : IStringAppearancesService, System.ServiceModel.IClientChannel
{
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class StringAppearancesServiceClient : System.ServiceModel.ClientBase<IStringAppearancesService>, IStringAppearancesService
{
    
    public StringAppearancesServiceClient()
    {
    }
    
    public StringAppearancesServiceClient(string endpointConfigurationName) : 
            base(endpointConfigurationName)
    {
    }
    
    public StringAppearancesServiceClient(string endpointConfigurationName, string remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public StringAppearancesServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public StringAppearancesServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(binding, remoteAddress)
    {
    }
    
    public int CountAppearances(string searched, string text)
    {
        return base.Channel.CountAppearances(searched, text);
    }
    
    public System.Threading.Tasks.Task<int> CountAppearancesAsync(string searched, string text)
    {
        return base.Channel.CountAppearancesAsync(searched, text);
    }
}