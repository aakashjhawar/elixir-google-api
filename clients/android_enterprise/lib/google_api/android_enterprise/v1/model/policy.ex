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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Policy do
  @moduledoc """
  The device policy for a given managed device.

  ## Attributes

  *   `autoUpdatePolicy` (*type:* `String.t`, *default:* `nil`) - Recommended alternative: autoUpdateMode which is set per app, provides greater flexibility around update frequency. When autoUpdateMode is set to AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no effect. "choiceToTheUser" allows the device's user to configure the app update policy. "always" enables auto updates. "never" disables auto updates. "wifiOnly" enables auto updates only when the device is connected to wifi.
  *   `deviceReportPolicy` (*type:* `String.t`, *default:* `nil`) - Whether the device reports app states to the EMM. The default value is "deviceReportDisabled".
  *   `maintenanceWindow` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow.t`, *default:* `nil`) - The maintenance window defining when apps running in the foreground should be updated.
  *   `productAvailabilityPolicy` (*type:* `String.t`, *default:* `nil`) - The availability granted to the device for the specified products. "all" gives the device access to all products, regardless of approval status. "all" does not enable automatic visibility of "alpha" or "beta" tracks. "whitelist" grants the device access the products specified in productPolicy[]. Only products that are approved or products that were previously approved (products with revoked approval) by the enterprise can be whitelisted. If no value is provided, the availability set at the user level is applied by default.
  *   `productPolicy` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy.t)`, *default:* `nil`) - The list of product policies. The productAvailabilityPolicy needs to be set to WHITELIST or ALL for the product policies to be applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoUpdatePolicy => String.t() | nil,
          :deviceReportPolicy => String.t() | nil,
          :maintenanceWindow => GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow.t() | nil,
          :productAvailabilityPolicy => String.t() | nil,
          :productPolicy => list(GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy.t()) | nil
        }

  field(:autoUpdatePolicy)
  field(:deviceReportPolicy)
  field(:maintenanceWindow, as: GoogleApi.AndroidEnterprise.V1.Model.MaintenanceWindow)
  field(:productAvailabilityPolicy)
  field(:productPolicy, as: GoogleApi.AndroidEnterprise.V1.Model.ProductPolicy, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
