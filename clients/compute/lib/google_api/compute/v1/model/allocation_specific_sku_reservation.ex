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

defmodule GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation do
  @moduledoc """
  This reservation type allows to pre allocate specific instance configuration. Next ID: 6

  ## Attributes

  *   `assuredCount` (*type:* `String.t`, *default:* `nil`) - [Output Only] Indicates how many instances are actually usable currently.
  *   `count` (*type:* `String.t`, *default:* `nil`) - Specifies the number of resources that are allocated.
  *   `inUseCount` (*type:* `String.t`, *default:* `nil`) - [Output Only] Indicates how many instances are in use.
  *   `instanceProperties` (*type:* `GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties.t`, *default:* `nil`) - The instance properties for the reservation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assuredCount => String.t() | nil,
          :count => String.t() | nil,
          :inUseCount => String.t() | nil,
          :instanceProperties =>
            GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties.t()
            | nil
        }

  field(:assuredCount)
  field(:count)
  field(:inUseCount)

  field(:instanceProperties,
    as: GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties
  )
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
