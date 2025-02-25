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

defmodule GoogleApi.NetworkConnectivity.V1.Model.Spoke do
  @moduledoc """
  A Network Connectivity Center spoke represents a connection between your Google Cloud network resources and a non-Google-Cloud network. When you create a spoke, you associate it with a hub. You must also identify a value for exactly one of the following fields: * linked_vpn_tunnels * linked_interconnect_attachments * linked_router_appliance_instances

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the spoke was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of the spoke.
  *   `hub` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the hub that this spoke is attached to.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  *   `linkedInterconnectAttachments` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments.t`, *default:* `nil`) - VLAN attachments that are associated with the spoke.
  *   `linkedRouterApplianceInstances` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances.t`, *default:* `nil`) - Router appliance instances that are associated with the spoke.
  *   `linkedVpnTunnels` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.LinkedVpnTunnels.t`, *default:* `nil`) - VPN tunnels that are associated with the spoke.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current lifecycle state of this spoke.
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the spoke was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :hub => String.t() | nil,
          :labels => map() | nil,
          :linkedInterconnectAttachments =>
            GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments.t() | nil,
          :linkedRouterApplianceInstances =>
            GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances.t() | nil,
          :linkedVpnTunnels => GoogleApi.NetworkConnectivity.V1.Model.LinkedVpnTunnels.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :uniqueId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:hub)
  field(:labels, type: :map)

  field(:linkedInterconnectAttachments,
    as: GoogleApi.NetworkConnectivity.V1.Model.LinkedInterconnectAttachments
  )

  field(:linkedRouterApplianceInstances,
    as: GoogleApi.NetworkConnectivity.V1.Model.LinkedRouterApplianceInstances
  )

  field(:linkedVpnTunnels, as: GoogleApi.NetworkConnectivity.V1.Model.LinkedVpnTunnels)
  field(:name)
  field(:state)
  field(:uniqueId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.Spoke do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.Spoke.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.Spoke do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
