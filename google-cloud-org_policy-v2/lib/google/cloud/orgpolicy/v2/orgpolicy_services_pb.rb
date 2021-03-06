# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/orgpolicy/v2/orgpolicy.proto for package 'Google.Cloud.OrgPolicy.V2'
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
require 'google/cloud/orgpolicy/v2/orgpolicy_pb'

module Google
  module Cloud
    module OrgPolicy
      module V2
        module OrgPolicy
          # An interface for managing organization policies.
          #
          # The Cloud Org Policy service provides a simple mechanism for organizations to
          # restrict the allowed configurations across their entire Cloud Resource
          # hierarchy.
          #
          # You can use a `policy` to configure restrictions in Cloud resources. For
          # example, you can enforce a `policy` that restricts which Google
          # Cloud Platform APIs can be activated in a certain part of your resource
          # hierarchy, or prevents serial port access to VM instances in a particular
          # folder.
          #
          # `Policies` are inherited down through the resource hierarchy. A `policy`
          # applied to a parent resource automatically applies to all its child resources
          # unless overridden with a `policy` lower in the hierarchy.
          #
          # A `constraint` defines an aspect of a resource's configuration that can be
          # controlled by an organization's policy administrator. `Policies` are a
          # collection of `constraints` that defines their allowable configuration on a
          # particular resource and its child resources.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.orgpolicy.v2.OrgPolicy'

            # Lists `Constraints` that could be applied on the specified resource.
            rpc :ListConstraints, ::Google::Cloud::OrgPolicy::V2::ListConstraintsRequest, ::Google::Cloud::OrgPolicy::V2::ListConstraintsResponse
            # Retrieves all of the `Policies` that exist on a particular resource.
            rpc :ListPolicies, ::Google::Cloud::OrgPolicy::V2::ListPoliciesRequest, ::Google::Cloud::OrgPolicy::V2::ListPoliciesResponse
            # Gets a `Policy` on a resource.
            #
            # If no `Policy` is set on the resource, NOT_FOUND is returned. The
            # `etag` value can be used with `UpdatePolicy()` to update a
            # `Policy` during read-modify-write.
            rpc :GetPolicy, ::Google::Cloud::OrgPolicy::V2::GetPolicyRequest, ::Google::Cloud::OrgPolicy::V2::Policy
            # Gets the effective `Policy` on a resource. This is the result of merging
            # `Policies` in the resource hierarchy and evaluating conditions. The
            # returned `Policy` will not have an `etag` or `condition` set because it is
            # a computed `Policy` across multiple resources.
            # Subtrees of Resource Manager resource hierarchy with 'under:' prefix will
            # not be expanded.
            rpc :GetEffectivePolicy, ::Google::Cloud::OrgPolicy::V2::GetEffectivePolicyRequest, ::Google::Cloud::OrgPolicy::V2::Policy
            # Creates a Policy.
            #
            # Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
            # constraint does not exist.
            # Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the
            # policy already exists on the given Cloud resource.
            rpc :CreatePolicy, ::Google::Cloud::OrgPolicy::V2::CreatePolicyRequest, ::Google::Cloud::OrgPolicy::V2::Policy
            # Updates a Policy.
            #
            # Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
            # constraint or the policy do not exist.
            # Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag
            # supplied in the request does not match the persisted etag of the policy
            #
            # Note: the supplied policy will perform a full overwrite of all
            # fields.
            rpc :UpdatePolicy, ::Google::Cloud::OrgPolicy::V2::UpdatePolicyRequest, ::Google::Cloud::OrgPolicy::V2::Policy
            # Deletes a Policy.
            #
            # Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the
            # constraint or Org Policy does not exist.
            rpc :DeletePolicy, ::Google::Cloud::OrgPolicy::V2::DeletePolicyRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
