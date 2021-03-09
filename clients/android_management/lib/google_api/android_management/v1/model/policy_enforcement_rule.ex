# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule do
  @moduledoc """
  A rule that defines the actions to take if a device or work profile is not compliant with the policy specified in settingName.

  ## Attributes

  *   `blockAction` (*type:* `GoogleApi.AndroidManagement.V1.Model.BlockAction.t`, *default:* `nil`) - An action to block access to apps and data on a fully managed device or in a work profile. This action also triggers a user-facing notification with information (where possible) on how to correct the compliance issue. Note: wipeAction must also be specified.
  *   `settingName` (*type:* `String.t`, *default:* `nil`) - The top-level policy to enforce. For example, applications or passwordPolicies.
  *   `wipeAction` (*type:* `GoogleApi.AndroidManagement.V1.Model.WipeAction.t`, *default:* `nil`) - An action to reset a fully managed device or delete a work profile. Note: blockAction must also be specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockAction => GoogleApi.AndroidManagement.V1.Model.BlockAction.t() | nil,
          :settingName => String.t() | nil,
          :wipeAction => GoogleApi.AndroidManagement.V1.Model.WipeAction.t() | nil
        }

  field(:blockAction, as: GoogleApi.AndroidManagement.V1.Model.BlockAction)
  field(:settingName)
  field(:wipeAction, as: GoogleApi.AndroidManagement.V1.Model.WipeAction)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
