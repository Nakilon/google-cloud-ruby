# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/workflows/v1beta/workflows.proto for package 'google.cloud.workflows.v1beta'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/workflows/v1beta/workflows_pb'

module Google
  module Cloud
    module Workflows
      module V1beta
        module Workflows
          # Workflows is used to deploy and execute workflow programs.
          # Workflows makes sure the program executes reliably, despite hardware and
          # networking interruptions.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.workflows.v1beta.Workflows'

            # Lists Workflows in a given project and location.
            # The default order is not specified.
            rpc :ListWorkflows, ::Google::Cloud::Workflows::V1beta::ListWorkflowsRequest, ::Google::Cloud::Workflows::V1beta::ListWorkflowsResponse
            # Gets details of a single Workflow.
            rpc :GetWorkflow, ::Google::Cloud::Workflows::V1beta::GetWorkflowRequest, ::Google::Cloud::Workflows::V1beta::Workflow
            # Creates a new workflow. If a workflow with the specified name already
            # exists in the specified project and location, the long running operation
            # will return [ALREADY_EXISTS][google.rpc.Code.ALREADY_EXISTS] error.
            rpc :CreateWorkflow, ::Google::Cloud::Workflows::V1beta::CreateWorkflowRequest, ::Google::Longrunning::Operation
            # Deletes a workflow with the specified name.
            # This method also cancels and deletes all running executions of the
            # workflow.
            rpc :DeleteWorkflow, ::Google::Cloud::Workflows::V1beta::DeleteWorkflowRequest, ::Google::Longrunning::Operation
            # Updates an existing workflow.
            # Running this method has no impact on already running executions of the
            # workflow. A new revision of the workflow may be created as a result of a
            # successful update operation. In that case, such revision will be used
            # in new workflow executions.
            rpc :UpdateWorkflow, ::Google::Cloud::Workflows::V1beta::UpdateWorkflowRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
