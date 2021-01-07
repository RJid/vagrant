# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: plugin.proto for package 'hashicorp.vagrant.sdk'

require 'grpc'
require_relative './plugin_pb'

module Hashicorp
  module Vagrant
    module Sdk
      module TerminalUIService
        # *******************************************************************
        # Terminal UI Service
        # ******************************************************************
        #
        # TerminalUIService is a service that provides "sdk/terminal.UI" interface
        # to plugins. Plugins don't interact with this directly, they usually
        # interact with it indirectly via a terminal.UI implementation.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.TerminalUIService'

          rpc :Output, ::Hashicorp::Vagrant::Sdk::TerminalUI::OutputRequest, ::Google::Protobuf::Empty
          rpc :Events, stream(::Hashicorp::Vagrant::Sdk::TerminalUI::Event), stream(::Hashicorp::Vagrant::Sdk::TerminalUI::Response)
          rpc :IsInteractive, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::TerminalUI::IsInteractiveResponse
        end

        Stub = Service.rpc_stub_class
      end
      module Mapper
        # Mapper is a specialized type of plugin that provides type mappers
        # to convert to/from various types.
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.Mapper'

          # ListMappers returns the list of mappers that this plugin supports.
          rpc :ListMappers, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Map::ListResponse
          # Map executes a mapper.
          rpc :Map, ::Hashicorp::Vagrant::Sdk::Map::Request, ::Hashicorp::Vagrant::Sdk::Map::Response
        end

        Stub = Service.rpc_stub_class
      end
      module ProviderService
        # service CommunicatorService {
        #   rpc Match(Communicator.MatchRequest) returns (Communicator);
        # }
        #
        # *******************************************************************
        # Provider Plugin Service
        # ******************************************************************
        #
        # Provider service is a provider that takes some set of arguments changes
        # the state of a machine
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ProviderService'

          # rpc Usable(google.protobuf.Empty) returns (Provider.UsableResp);
          # rpc Installed(google.protobuf.Empty) returns (Provider.InstalledResp);
          rpc :Usable, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::UsableResp
          rpc :UsableSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Installed, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::InstalledResp
          rpc :InstalledSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Init, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Google::Protobuf::Empty
          rpc :InitSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :ActionUp, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Provider::ActionResp
          rpc :ActionUpSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          # rpc ActionHalt(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionHaltSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSuspend(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSuspendSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionReload(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionReloadSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionResume(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionResumeSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionProvision(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionProvisionSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotSave(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotSaveSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotRestore(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotRestoreSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionSnapshotDelete(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionSnapshotDeleteSpec(google.protobuf.Empty) returns (FuncSpec);
          # rpc ActionDestroy(FuncSpec.Args) returns (Provider.Action.Resp);
          # rpc ActionDestroySpec(google.protobuf.Empty) returns (FuncSpec);
          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      # rpc IsAuthenticator(google.protobuf.Empty) returns (ImplementsResp);
      # rpc Auth(FuncSpec.Args) returns (Auth.AuthResponse);
      # rpc AuthSpec(google.protobuf.Empty) returns (FuncSpec);
      # rpc ValidateAuth(FuncSpec.Args) returns (google.protobuf.Empty);
      # rpc ValidateAuthSpec(google.protobuf.Empty) returns (FuncSpec);
      module ProvisionerService
        # *******************************************************************
        # Provisioner Plugin Service
        # ******************************************************************
        #
        # A Provisioner runs actions against a VM
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ProvisionerService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module CommandService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.CommandService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module CommunicatorService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.CommunicatorService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :MatchSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Match, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::MatchResp
          rpc :InitSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Init, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::InitResp
          rpc :ReadySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Ready, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ReadyResp
          rpc :WaitForReadySpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :WaitForReady, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ReadyResp
          rpc :DownloadSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Download, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::FileTransferResp
          rpc :UploadSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Upload, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::FileTransferResp
          rpc :ExecuteSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Execute, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ExecuteResp
          rpc :PrivilegedExecuteSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :PrivilegedExecute, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ExecuteResp
          rpc :TestSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Test, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::TestResp
          rpc :ResetSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Reset, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Communicator::ResetResp
        end

        Stub = Service.rpc_stub_class
      end
      module ConfigService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.ConfigService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
      module GuestService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.GuestService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :Detect, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Guest::DetectResp
          rpc :DetectSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :HasCapability, ::Hashicorp::Vagrant::Sdk::Guest::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::Guest::Capability::CheckResp
          rpc :HasCapabilitySpec, ::Hashicorp::Vagrant::Sdk::Guest::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::FuncSpec
          rpc :Capability, ::Hashicorp::Vagrant::Sdk::Guest::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::Guest::Capability::Resp
          rpc :CapabilitySpec, ::Hashicorp::Vagrant::Sdk::Guest::Capability::NamedRequest, ::Hashicorp::Vagrant::Sdk::FuncSpec
        end

        Stub = Service.rpc_stub_class
      end
      module HostService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.HostService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
          rpc :Detect, ::Hashicorp::Vagrant::Sdk::FuncSpec::Args, ::Hashicorp::Vagrant::Sdk::Host::DetectResp
          rpc :DetectSpec, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::FuncSpec
        end

        Stub = Service.rpc_stub_class
      end
      module SyncedFolderService
        class Service

          include GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'hashicorp.vagrant.sdk.SyncedFolderService'

          rpc :ConfigStruct, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::StructResp
          rpc :Configure, ::Hashicorp::Vagrant::Sdk::Config::ConfigureRequest, ::Google::Protobuf::Empty
          rpc :Documentation, ::Google::Protobuf::Empty, ::Hashicorp::Vagrant::Sdk::Config::Documentation
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end