﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLiCaPhe.ChamCongNVService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ChamCongNVService.IChamCongNVService")]
    public interface IChamCongNVService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/DoWork", ReplyAction="http://tempuri.org/IChamCongNVService/DoWorkResponse")]
        void DoWork();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/DoWork", ReplyAction="http://tempuri.org/IChamCongNVService/DoWorkResponse")]
        System.Threading.Tasks.Task DoWorkAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/getDSCCNV", ReplyAction="http://tempuri.org/IChamCongNVService/getDSCCNVResponse")]
        System.Data.DataTable getDSCCNV();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/getDSCCNV", ReplyAction="http://tempuri.org/IChamCongNVService/getDSCCNVResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> getDSCCNVAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/getTenNV", ReplyAction="http://tempuri.org/IChamCongNVService/getTenNVResponse")]
        string getTenNV(string maNV);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/getTenNV", ReplyAction="http://tempuri.org/IChamCongNVService/getTenNVResponse")]
        System.Threading.Tasks.Task<string> getTenNVAsync(string maNV);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/kiemtraCCNV", ReplyAction="http://tempuri.org/IChamCongNVService/kiemtraCCNVResponse")]
        bool kiemtraCCNV(string maNV, System.DateTime ngay, string caLam);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/kiemtraCCNV", ReplyAction="http://tempuri.org/IChamCongNVService/kiemtraCCNVResponse")]
        System.Threading.Tasks.Task<bool> kiemtraCCNVAsync(string maNV, System.DateTime ngay, string caLam);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/ThemCC", ReplyAction="http://tempuri.org/IChamCongNVService/ThemCCResponse")]
        bool ThemCC(DTO_QLCP.ChamCongNV ccnv);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/ThemCC", ReplyAction="http://tempuri.org/IChamCongNVService/ThemCCResponse")]
        System.Threading.Tasks.Task<bool> ThemCCAsync(DTO_QLCP.ChamCongNV ccnv);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/SuaCC", ReplyAction="http://tempuri.org/IChamCongNVService/SuaCCResponse")]
        bool SuaCC(DTO_QLCP.ChamCongNV ccnv);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/SuaCC", ReplyAction="http://tempuri.org/IChamCongNVService/SuaCCResponse")]
        System.Threading.Tasks.Task<bool> SuaCCAsync(DTO_QLCP.ChamCongNV ccnv);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/XoaCC", ReplyAction="http://tempuri.org/IChamCongNVService/XoaCCResponse")]
        bool XoaCC(DTO_QLCP.ChamCongNV ccnv);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChamCongNVService/XoaCC", ReplyAction="http://tempuri.org/IChamCongNVService/XoaCCResponse")]
        System.Threading.Tasks.Task<bool> XoaCCAsync(DTO_QLCP.ChamCongNV ccnv);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChamCongNVServiceChannel : QuanLiCaPhe.ChamCongNVService.IChamCongNVService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChamCongNVServiceClient : System.ServiceModel.ClientBase<QuanLiCaPhe.ChamCongNVService.IChamCongNVService>, QuanLiCaPhe.ChamCongNVService.IChamCongNVService {
        
        public ChamCongNVServiceClient() {
        }
        
        public ChamCongNVServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ChamCongNVServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChamCongNVServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ChamCongNVServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void DoWork() {
            base.Channel.DoWork();
        }
        
        public System.Threading.Tasks.Task DoWorkAsync() {
            return base.Channel.DoWorkAsync();
        }
        
        public System.Data.DataTable getDSCCNV() {
            return base.Channel.getDSCCNV();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> getDSCCNVAsync() {
            return base.Channel.getDSCCNVAsync();
        }
        
        public string getTenNV(string maNV) {
            return base.Channel.getTenNV(maNV);
        }
        
        public System.Threading.Tasks.Task<string> getTenNVAsync(string maNV) {
            return base.Channel.getTenNVAsync(maNV);
        }
        
        public bool kiemtraCCNV(string maNV, System.DateTime ngay, string caLam) {
            return base.Channel.kiemtraCCNV(maNV, ngay, caLam);
        }
        
        public System.Threading.Tasks.Task<bool> kiemtraCCNVAsync(string maNV, System.DateTime ngay, string caLam) {
            return base.Channel.kiemtraCCNVAsync(maNV, ngay, caLam);
        }
        
        public bool ThemCC(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.ThemCC(ccnv);
        }
        
        public System.Threading.Tasks.Task<bool> ThemCCAsync(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.ThemCCAsync(ccnv);
        }
        
        public bool SuaCC(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.SuaCC(ccnv);
        }
        
        public System.Threading.Tasks.Task<bool> SuaCCAsync(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.SuaCCAsync(ccnv);
        }
        
        public bool XoaCC(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.XoaCC(ccnv);
        }
        
        public System.Threading.Tasks.Task<bool> XoaCCAsync(DTO_QLCP.ChamCongNV ccnv) {
            return base.Channel.XoaCCAsync(ccnv);
        }
    }
}
